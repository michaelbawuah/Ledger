; ModuleID = '/workspace/scratch/782b5db88681/Ledger-llvm-pass/src/book.cpp'
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
%"struct.std::random_access_iterator_tag" = type { i8 }
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
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
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
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #17
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %config, i64 24, i1 false)
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
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
  %count = alloca i64, align 8
  %ref.tmp = alloca %"class.std::vector", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #17
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 1
  %0 = load i64, ptr %max_price, align 8
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 0
  %1 = load i64, ptr %min_price, align 8
  %sub = sub nsw i64 %0, %1
  %add = add i64 %sub, 1
  store i64 %add, ptr %count, align 8
  %2 = load i64, ptr %count, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %ref.tmp) #17
  call void @llvm.memset.p0.i64(ptr align 8 %ref.tmp, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %cmp = icmp ugt i64 %2, %call
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
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #17
  br label %eh.resume

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %count, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #17
  ret i64 %6

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPN6ledger8FastBook5LevelES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  %bitmap_search.addr = alloca i8, align 1
  %bitmap_fok.addr = alloca i8, align 1
  %agg.tmp = alloca %"struct.ledger::Config", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp9 = alloca %"struct.ledger::Config", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %ref.tmp17 = alloca %"class.std::allocator", align 1
  %ref.tmp24 = alloca %"class.std::allocator.12", align 1
  %ref.tmp29 = alloca %"class.std::allocator.12", align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %bitmap_search to i8
  store i8 %frombool, ptr %bitmap_search.addr, align 1
  %frombool1 = zext i1 %bitmap_fok to i8
  store i8 %frombool1, ptr %bitmap_fok.addr, align 1
  %this2 = load ptr, ptr %this.addr, align 8
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %config, i64 24, i1 false)
  call void @_ZN6ledger8FastBook15validate_configENS_6ConfigE(ptr dead_on_unwind writable sret(%"struct.ledger::Config") align 8 %config_, ptr noundef byval(%"struct.ledger::Config") align 8 %agg.tmp)
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 1
  %0 = load i8, ptr %bitmap_search.addr, align 1, !range !5, !noundef !6
  %tobool = trunc i8 %0 to i1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, ptr %bitmap_search_, align 8
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 2
  %1 = load i8, ptr %bitmap_fok.addr, align 1, !range !5, !noundef !6
  %tobool4 = trunc i8 %1 to i1
  %frombool5 = zext i1 %tobool4 to i8
  store i8 %frombool5, ptr %bitmap_fok_, align 1
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 3
  %config_6 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 0
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config_6, i32 0, i32 2
  %2 = load i32, ptr %max_orders, align 8
  call void @_ZN6ledger6detail9OrderPoolC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %2)
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 4
  %config_7 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 0
  %max_orders8 = getelementptr inbounds %"struct.ledger::Config", ptr %config_7, i32 0, i32 2
  %3 = load i32, ptr %max_orders8, align 8
  invoke void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %index_, i32 noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 5
  %config_10 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 0
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
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 6
  %bids_15 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 5
  %call16 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_15) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp17) #17
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  invoke void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %asks_, i64 noundef %call16, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont14
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp17) #17
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 7
  %bids_20 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 5
  %call21 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_20) #17
  %div = udiv i64 %call21, 64
  %bids_22 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 5
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
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 8
  %bid_bitmap_27 = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 7
  %call28 = call noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_27) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp29) #17
  call void @_ZNSaImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  invoke void @_ZNSt6vectorImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %ask_bitmap_, i64 noundef %call28, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %invoke.cont26
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp29) #17
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 9
  store i64 -1, ptr %best_bid_, align 8
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 10
  store i64 -1, ptr %best_ask_, align 8
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 11
  store i64 0, ptr %resting_quantity_, align 8
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this2, i32 0, i32 12
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
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup34

lpad11:                                           ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  br label %ehcleanup33

lpad13:                                           ; preds = %invoke.cont12
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup33

lpad18:                                           ; preds = %invoke.cont14
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp17) #17
  br label %ehcleanup32

lpad25:                                           ; preds = %invoke.cont19
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %exn.slot, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %ehselector.slot, align 4
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp24) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp24) #17
  br label %ehcleanup

lpad30:                                           ; preds = %invoke.cont26
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = extractvalue { ptr, i32 } %19, 0
  store ptr %20, ptr %exn.slot, align 8
  %21 = extractvalue { ptr, i32 } %19, 1
  store i32 %21, ptr %ehselector.slot, align 4
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp29) #17
  call void @_ZNSt6vectorImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_) #17
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad30, %lpad25
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %asks_) #17
  br label %ehcleanup32

ehcleanup32:                                      ; preds = %ehcleanup, %lpad18
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %ehcleanup32, %lpad13, %lpad11
  call void @_ZN6ledger6detail7IdIndexD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %index_) #17
  br label %ehcleanup34

ehcleanup34:                                      ; preds = %ehcleanup33, %lpad
  call void @_ZN6ledger6detail9OrderPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup34
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val35 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val35
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPoolC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %capacity) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %capacity.addr = alloca i32, align 4
  %ref.tmp = alloca %"class.std::allocator.2", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %capacity, ptr %capacity.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %capacity.addr, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  invoke void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  store i32 -1, ptr %free_head_, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 2
  store i64 0, ptr %size_, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %capacity.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17
  br label %for.end

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %eh.resume

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %add = add i32 %6, 1
  %7 = load i32, ptr %capacity.addr, align 4
  %cmp2 = icmp ult i32 %add, %7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %add3 = add i32 %8, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add3, %cond.true ], [ -1, %cond.false ]
  %nodes_4 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %9 = load i32, ptr %i, align 4
  %conv5 = zext i32 %9 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_4, i64 noundef %conv5) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call, i32 0, i32 6
  store i32 %cond, ptr %next, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond.cleanup
  %11 = load i32, ptr %capacity.addr, align 4
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i64
  %cond6 = select i1 %tobool, i32 0, i32 -1
  %free_head_7 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  store i32 %cond6, ptr %free_head_7, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val8 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %max_orders) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %max_orders.addr = alloca i32, align 4
  %ref.tmp = alloca %"class.std::allocator.7", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %max_orders, ptr %max_orders.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %max_orders.addr, align 4
  %call = call noundef i64 @_ZN6ledger6detail7IdIndex14table_capacityEj(i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  invoke void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %entries_2 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_2) #17
  %sub = sub i64 %call3, 1
  store i64 %sub, ptr %mask_, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 2
  store i64 0, ptr %size_, align 8
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val4 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val4
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %2 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %3 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %2 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %3 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt6vectorImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %entries_) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %nodes_) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %price) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %price.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %price, ptr %price.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %price.addr, align 8
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 0
  %1 = load i64, ptr %min_price, align 8
  %sub = sub nsw i64 %0, %1
  ret i64 %sub
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %value) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %value, ptr %value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 0
  %0 = load i64, ptr %min_price, align 8
  %1 = load i64, ptr %value.addr, align 8
  %add = add nsw i64 %0, %1
  ret i64 %add
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bids_, %cond.true ], [ %asks_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bids_, %cond.true ], [ %asks_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bid_bitmap_, %cond.true ], [ %ask_bitmap_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bid_bitmap_, %cond.true ], [ %ask_bitmap_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %best_bid_, %cond.true ], [ %best_ask_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  %1 = load i64, ptr %best_bid_, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  %2 = load i64, ptr %best_ask_, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_bidEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  %0 = load i64, ptr %best_bid_, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_bid_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  %1 = load i64, ptr %best_bid_2, align 8
  %call = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %1) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_askEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  %0 = load i64, ptr %best_ask_, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  %1 = load i64, ptr %best_ask_2, align 8
  %call = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %1) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %side.addr, align 1
  %1 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 5
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  %sub = sub i64 %call, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %call2 = call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %0, i64 noundef %cond) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) #6 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  %starting_level.addr = alloca i64, align 8
  %side_levels = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i8 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  store i64 %starting_level, ptr %starting_level.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_levels) #17
  %0 = load i8, ptr %side.addr, align 1
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %0) #17
  store ptr %call, ptr %side_levels, align 8
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 1
  %1 = load i8, ptr %bitmap_search_, align 8, !range !5, !noundef !6
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  %3 = load i64, ptr %starting_level.addr, align 8
  %add = add i64 %3, 1
  store i64 %add, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i64, ptr %i, align 8
  %cmp3 = icmp ne i64 %4, 0
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %side_levels, align 8
  %6 = load i64, ptr %i, align 8
  %sub = sub i64 %6, 1
  %call4 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %sub) #17
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 3
  %7 = load i32, ptr %orders, align 8
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %8 = load i64, ptr %i, align 8
  %sub7 = sub i64 %8, 1
  store i64 %sub7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %i, align 8
  %dec = add i64 %9, -1
  store i64 %dec, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

cleanup:                                          ; preds = %if.then6, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #17
  %10 = load i64, ptr %starting_level.addr, align 8
  store i64 %10, ptr %i8, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %if.else
  %11 = load i64, ptr %i8, align 8
  %12 = load ptr, ptr %side_levels, align 8
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  %cmp11 = icmp ult i64 %11, %call10
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond9
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

for.body13:                                       ; preds = %for.cond9
  %13 = load ptr, ptr %side_levels, align 8
  %14 = load i64, ptr %i8, align 8
  %call14 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %14) #17
  %orders15 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call14, i32 0, i32 3
  %15 = load i32, ptr %orders15, align 8
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body13
  %16 = load i64, ptr %i8, align 8
  store i64 %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end18:                                         ; preds = %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %17 = load i64, ptr %i8, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i8, align 8
  br label %for.cond9, !llvm.loop !11

cleanup20:                                        ; preds = %if.then17, %for.cond.cleanup12
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #17
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %cleanup26 [
    i32 5, label %for.end22
  ]

for.end22:                                        ; preds = %cleanup20
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %for.end
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end24:                                         ; preds = %entry
  %18 = load i8, ptr %side.addr, align 1
  %19 = load i64, ptr %starting_level.addr, align 8
  %call25 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %18, i64 noundef %19) #17
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.end23, %cleanup20, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_levels) #17
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) #6 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  %starting_level.addr = alloca i64, align 8
  %bits = alloca ptr, align 8
  %first_word = alloca i64, align 8
  %first_bit = alloca i32, align 4
  %first_bits = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %word = alloca i64, align 8
  %first_bits23 = alloca i64, align 8
  %word34 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  store i64 %starting_level, ptr %starting_level.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #17
  %0 = load i8, ptr %side.addr, align 1
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %0) #17
  store ptr %call, ptr %bits, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_word) #17
  %1 = load i64, ptr %starting_level.addr, align 8
  %div = udiv i64 %1, 64
  store i64 %div, ptr %first_word, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_bit) #17
  %2 = load i64, ptr %starting_level.addr, align 8
  %rem = urem i64 %2, 64
  %conv = trunc i64 %rem to i32
  store i32 %conv, ptr %first_bit, align 4
  %3 = load i8, ptr %side.addr, align 1
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_bits) #17
  %4 = load ptr, ptr %bits, align 8
  %5 = load i64, ptr %first_word, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #17
  %6 = load i64, ptr %call2, align 8
  %7 = load i32, ptr %first_bit, align 4
  %sub = sub i32 63, %7
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  %and = and i64 %6, %shr
  store i64 %and, ptr %first_bits, align 8
  %8 = load i64, ptr %first_bits, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i64, ptr %first_word, align 8
  %mul = mul i64 %9, 64
  %add = add i64 %mul, 63
  %10 = load i64, ptr %first_bits, align 8
  %call4 = call noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %10) #17
  %conv5 = sext i32 %call4 to i64
  %sub6 = sub i64 %add, %conv5
  store i64 %sub6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #17
  %11 = load i64, ptr %first_word, align 8
  store i64 %11, ptr %word, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, ptr %word, align 8
  %cmp7 = icmp ne i64 %12, 0
  br i1 %cmp7, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %bits, align 8
  %14 = load i64, ptr %word, align 8
  %sub8 = sub i64 %14, 1
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %sub8) #17
  %15 = load i64, ptr %call9, align 8
  %tobool10 = icmp ne i64 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %for.body
  %16 = load i64, ptr %word, align 8
  %sub12 = sub i64 %16, 1
  %mul13 = mul i64 %sub12, 64
  %add14 = add i64 %mul13, 63
  %17 = load ptr, ptr %bits, align 8
  %18 = load i64, ptr %word, align 8
  %sub15 = sub i64 %18, 1
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %sub15) #17
  %19 = load i64, ptr %call16, align 8
  %call17 = call noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %19) #17
  %conv18 = sext i32 %call17 to i64
  %sub19 = sub i64 %add14, %conv18
  store i64 %sub19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %20 = load i64, ptr %word, align 8
  %dec = add i64 %20, -1
  store i64 %dec, ptr %word, align 8
  br label %for.cond, !llvm.loop !12

cleanup:                                          ; preds = %if.then11, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %for.end, %cleanup, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_bits) #17
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup21
  br label %if.end57

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_bits23) #17
  %21 = load ptr, ptr %bits, align 8
  %22 = load i64, ptr %first_word, align 8
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %22) #17
  %23 = load i64, ptr %call24, align 8
  %24 = load i32, ptr %first_bit, align 4
  %sh_prom25 = zext i32 %24 to i64
  %shl = shl i64 -1, %sh_prom25
  %and26 = and i64 %23, %shl
  store i64 %and26, ptr %first_bits23, align 8
  %25 = load i64, ptr %first_bits23, align 8
  %tobool27 = icmp ne i64 %25, 0
  br i1 %tobool27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.else
  %26 = load i64, ptr %first_word, align 8
  %mul29 = mul i64 %26, 64
  %27 = load i64, ptr %first_bits23, align 8
  %call30 = call noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %27) #17
  %conv31 = sext i32 %call30 to i64
  %add32 = add i64 %mul29, %conv31
  store i64 %add32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54

if.end33:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %word34) #17
  %28 = load i64, ptr %first_word, align 8
  %add35 = add i64 %28, 1
  store i64 %add35, ptr %word34, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc50, %if.end33
  %29 = load i64, ptr %word34, align 8
  %30 = load ptr, ptr %bits, align 8
  %call37 = call noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #17
  %cmp38 = icmp ult i64 %29, %call37
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup39

for.cond.cleanup39:                               ; preds = %for.cond36
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

for.body40:                                       ; preds = %for.cond36
  %31 = load ptr, ptr %bits, align 8
  %32 = load i64, ptr %word34, align 8
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %32) #17
  %33 = load i64, ptr %call41, align 8
  %tobool42 = icmp ne i64 %33, 0
  br i1 %tobool42, label %if.then43, label %if.end49

if.then43:                                        ; preds = %for.body40
  %34 = load i64, ptr %word34, align 8
  %mul44 = mul i64 %34, 64
  %35 = load ptr, ptr %bits, align 8
  %36 = load i64, ptr %word34, align 8
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef %36) #17
  %37 = load i64, ptr %call45, align 8
  %call46 = call noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %37) #17
  %conv47 = sext i32 %call46 to i64
  %add48 = add i64 %mul44, %conv47
  store i64 %add48, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

if.end49:                                         ; preds = %for.body40
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %38 = load i64, ptr %word34, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %word34, align 8
  br label %for.cond36, !llvm.loop !13

cleanup51:                                        ; preds = %if.then43, %for.cond.cleanup39
  call void @llvm.lifetime.end.p0(i64 8, ptr %word34) #17
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %cleanup54 [
    i32 5, label %for.end53
  ]

for.end53:                                        ; preds = %cleanup51
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %for.end53, %cleanup51, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_bits23) #17
  %cleanup.dest55 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest55, label %cleanup58 [
    i32 0, label %cleanup.cont56
  ]

cleanup.cont56:                                   ; preds = %cleanup54
  br label %if.end57

if.end57:                                         ; preds = %cleanup.cont56, %cleanup.cont
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %if.end57, %cleanup54, %cleanup21
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_bit) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_word) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #17
  %39 = load i64, ptr %retval, align 8
  ret i64 %39
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %__x) #6 comdat {
entry:
  %__x.addr = alloca i64, align 8
  store i64 %__x, ptr %__x.addr, align 8
  %0 = load i64, ptr %__x.addr, align 8
  %call = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %0) #17
  ret i32 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %__x) #6 comdat {
entry:
  %__x.addr = alloca i64, align 8
  store i64 %__x, ptr %__x.addr, align 8
  %0 = load i64, ptr %__x.addr, align 8
  %call = call noundef i32 @_ZSt13__countr_zeroImEiT_(i64 noundef %0) #17
  ret i32 %call
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %maker_price) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %command.addr = alloca ptr, align 8
  %maker_price.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %command, ptr %command.addr, align 8
  store i64 %maker_price, ptr %maker_price.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %command.addr, align 8
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %0, i32 0, i32 5
  %1 = load i8, ptr %action, align 1
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %command.addr, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %2, i32 0, i32 4
  %3 = load i8, ptr %side, align 4
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.rhs
  %4 = load ptr, ptr %command.addr, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %4, i32 0, i32 2
  %5 = load i64, ptr %price, align 8
  %6 = load i64, ptr %maker_price.addr, align 8
  %cmp3 = icmp sge i64 %5, %6
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  %7 = load ptr, ptr %command.addr, align 8
  %price4 = getelementptr inbounds %"struct.ledger::Command", ptr %7, i32 0, i32 2
  %8 = load i64, ptr %price4, align 8
  %9 = load i64, ptr %maker_price.addr, align 8
  %cmp5 = icmp sle i64 %8, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %cmp3, %cond.true ], [ %cmp5, %cond.false ]
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %entry
  %10 = phi i1 [ true, %entry ], [ %cond, %cond.end ]
  ret i1 %10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command) #6 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %command.addr = alloca ptr, align 8
  %opposite = alloca i8, align 1
  %side_levels = alloca ptr, align 8
  %first = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %available = alloca i64, align 8
  %level = alloca i64, align 8
  %i = alloca i64, align 8
  %i46 = alloca i64, align 8
  %level52 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %command, ptr %command.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %opposite) #17
  %0 = load ptr, ptr %command.addr, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %0, i32 0, i32 4
  %1 = load i8, ptr %side, align 4
  %cmp = icmp eq i8 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8 1, i8 0
  store i8 %cond, ptr %opposite, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_levels) #17
  %3 = load i8, ptr %opposite, align 1
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %3) #17
  store ptr %call, ptr %side_levels, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17
  %4 = load i8, ptr %opposite, align 1
  %call2 = call noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %4) #17
  store i64 %call2, ptr %first, align 8
  %5 = load i64, ptr %first, align 8
  %cmp3 = icmp eq i64 %5, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %available) #17
  store i64 0, ptr %available, align 8
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 2
  %6 = load i8, ptr %bitmap_fok_, align 1, !range !5, !noundef !6
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %level) #17
  %7 = load i64, ptr %first, align 8
  store i64 %7, ptr %level, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.then4
  %8 = load i64, ptr %level, align 8
  %cmp5 = icmp ne i64 %8, -1
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %command.addr, align 8
  %10 = load i64, ptr %level, align 8
  %call6 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %10) #17
  %call7 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %9, i64 noundef %call6) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %call7, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %side_levels, align 8
  %13 = load i64, ptr %level, align 8
  %call8 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %13) #17
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call8, i32 0, i32 2
  %14 = load i64, ptr %quantity, align 8
  %15 = load i64, ptr %available, align 8
  %add = add i64 %15, %14
  store i64 %add, ptr %available, align 8
  %16 = load i64, ptr %available, align 8
  %17 = load ptr, ptr %command.addr, align 8
  %quantity9 = getelementptr inbounds %"struct.ledger::Command", ptr %17, i32 0, i32 3
  %18 = load i32, ptr %quantity9, align 8
  %conv = zext i32 %18 to i64
  %cmp10 = icmp uge i64 %16, %conv
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %19 = load i8, ptr %opposite, align 1
  %cmp13 = icmp eq i8 %19, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %20 = load i64, ptr %level, align 8
  %21 = load ptr, ptr %side_levels, align 8
  %call15 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #17
  %sub = sub i64 %call15, 1
  %cmp16 = icmp eq i64 %20, %sub
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  br label %while.end

if.end18:                                         ; preds = %if.then14
  %22 = load i8, ptr %opposite, align 1
  %23 = load i64, ptr %level, align 8
  %add19 = add i64 %23, 1
  %call20 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %22, i64 noundef %add19) #17
  store i64 %call20, ptr %level, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end12
  %24 = load i64, ptr %level, align 8
  %cmp21 = icmp eq i64 %24, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  br label %while.end

if.end23:                                         ; preds = %if.else
  %25 = load i8, ptr %opposite, align 1
  %26 = load i64, ptr %level, align 8
  %sub24 = sub i64 %26, 1
  %call25 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %25, i64 noundef %sub24) #17
  store i64 %call25, ptr %level, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end18
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %if.then22, %if.then17, %land.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  br label %cleanup73

if.end27:                                         ; preds = %if.end
  %27 = load i8, ptr %opposite, align 1
  %cmp28 = icmp eq i8 %27, 1
  br i1 %cmp28, label %if.then29, label %if.else45

if.then29:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  %28 = load i64, ptr %first, align 8
  store i64 %28, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then29
  %29 = load i64, ptr %i, align 8
  %30 = load ptr, ptr %side_levels, align 8
  %call30 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #17
  %cmp31 = icmp ult i64 %29, %call30
  br i1 %cmp31, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %for.cond
  %31 = load ptr, ptr %command.addr, align 8
  %32 = load i64, ptr %i, align 8
  %call33 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %32) #17
  %call34 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %31, i64 noundef %call33) #17
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %call34, %land.rhs32 ]
  br i1 %33, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %land.end35
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

for.body:                                         ; preds = %land.end35
  %34 = load ptr, ptr %side_levels, align 8
  %35 = load i64, ptr %i, align 8
  %call36 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %35) #17
  %quantity37 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call36, i32 0, i32 2
  %36 = load i64, ptr %quantity37, align 8
  %37 = load i64, ptr %available, align 8
  %add38 = add i64 %37, %36
  store i64 %add38, ptr %available, align 8
  %38 = load i64, ptr %available, align 8
  %39 = load ptr, ptr %command.addr, align 8
  %quantity39 = getelementptr inbounds %"struct.ledger::Command", ptr %39, i32 0, i32 3
  %40 = load i32, ptr %quantity39, align 8
  %conv40 = zext i32 %40 to i64
  %cmp41 = icmp uge i64 %38, %conv40
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end43:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %41 = load i64, ptr %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !15

cleanup44:                                        ; preds = %if.then42, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup73 [
    i32 4, label %for.end
  ]

for.end:                                          ; preds = %cleanup44
  br label %if.end72

if.else45:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i46) #17
  %42 = load i64, ptr %first, align 8
  %add47 = add i64 %42, 1
  store i64 %add47, ptr %i46, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc68, %if.else45
  %43 = load i64, ptr %i46, align 8
  %cmp49 = icmp ne i64 %43, 0
  br i1 %cmp49, label %for.body51, label %for.cond.cleanup50

for.cond.cleanup50:                               ; preds = %for.cond48
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

for.body51:                                       ; preds = %for.cond48
  call void @llvm.lifetime.start.p0(i64 8, ptr %level52) #17
  %44 = load i64, ptr %i46, align 8
  %sub53 = sub i64 %44, 1
  store i64 %sub53, ptr %level52, align 8
  %45 = load ptr, ptr %command.addr, align 8
  %46 = load i64, ptr %level52, align 8
  %call54 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %46) #17
  %call55 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %45, i64 noundef %call54) #17
  br i1 %call55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %for.body51
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end57:                                         ; preds = %for.body51
  %47 = load ptr, ptr %side_levels, align 8
  %48 = load i64, ptr %level52, align 8
  %call58 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %48) #17
  %quantity59 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call58, i32 0, i32 2
  %49 = load i64, ptr %quantity59, align 8
  %50 = load i64, ptr %available, align 8
  %add60 = add i64 %50, %49
  store i64 %add60, ptr %available, align 8
  %51 = load i64, ptr %available, align 8
  %52 = load ptr, ptr %command.addr, align 8
  %quantity61 = getelementptr inbounds %"struct.ledger::Command", ptr %52, i32 0, i32 3
  %53 = load i32, ptr %quantity61, align 8
  %conv62 = zext i32 %53 to i64
  %cmp63 = icmp uge i64 %51, %conv62
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end57
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end65:                                         ; preds = %if.end57
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %if.then64, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %level52) #17
  %cleanup.dest67 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest67, label %cleanup69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup66
  br label %for.inc68

for.inc68:                                        ; preds = %cleanup.cont
  %54 = load i64, ptr %i46, align 8
  %dec = add i64 %54, -1
  store i64 %dec, ptr %i46, align 8
  br label %for.cond48, !llvm.loop !16

cleanup69:                                        ; preds = %cleanup66, %for.cond.cleanup50
  call void @llvm.lifetime.end.p0(i64 8, ptr %i46) #17
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %cleanup73 [
    i32 7, label %for.end71
  ]

for.end71:                                        ; preds = %cleanup69
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %for.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end72, %cleanup69, %cleanup44, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %available) #17
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup73, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_levels) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %opposite) #17
  %55 = load i1, ptr %retval, align 1
  ret i1 %55
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i32 noundef %remaining) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %command.addr = alloca ptr, align 8
  %remaining.addr = alloca i32, align 4
  %slot = alloca i32, align 4
  %order = alloca ptr, align 8
  %level = alloca ptr, align 8
  %price_index = alloca i64, align 8
  %current_best = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %command, ptr %command.addr, align 8
  store i32 %remaining, ptr %remaining.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call = call noundef i32 @_ZN6ledger6detail9OrderPool7acquireEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  store i32 %call, ptr %slot, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %order) #17
  %pool_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %0 = load i32, ptr %slot, align 4
  %call3 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_2, i32 noundef %0) #17
  store ptr %call3, ptr %order, align 8
  %1 = load ptr, ptr %command.addr, align 8
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %1, i32 0, i32 1
  %2 = load i64, ptr %id, align 8
  %3 = load ptr, ptr %order, align 8
  %id4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %3, i32 0, i32 0
  store i64 %2, ptr %id4, align 8
  %4 = load ptr, ptr %command.addr, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %4, i32 0, i32 2
  %5 = load i64, ptr %price, align 8
  %6 = load ptr, ptr %order, align 8
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %6, i32 0, i32 1
  store i64 %5, ptr %price5, align 8
  %7 = load i32, ptr %remaining.addr, align 4
  %8 = load ptr, ptr %order, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %8, i32 0, i32 2
  store i32 %7, ptr %quantity, align 8
  %9 = load ptr, ptr %command.addr, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %9, i32 0, i32 4
  %10 = load i8, ptr %side, align 4
  %11 = load ptr, ptr %order, align 8
  %side6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %11, i32 0, i32 3
  store i8 %10, ptr %side6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %level) #17
  %12 = load ptr, ptr %command.addr, align 8
  %side7 = getelementptr inbounds %"struct.ledger::Command", ptr %12, i32 0, i32 4
  %13 = load i8, ptr %side7, align 4
  %call8 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %13) #17
  %14 = load ptr, ptr %command.addr, align 8
  %price9 = getelementptr inbounds %"struct.ledger::Command", ptr %14, i32 0, i32 2
  %15 = load i64, ptr %price9, align 8
  %call10 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %15) #17
  %call11 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call8, i64 noundef %call10) #17
  store ptr %call11, ptr %level, align 8
  %16 = load ptr, ptr %level, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %16, i32 0, i32 1
  %17 = load i32, ptr %tail, align 4
  %18 = load ptr, ptr %order, align 8
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %18, i32 0, i32 5
  store i32 %17, ptr %previous, align 8
  %19 = load ptr, ptr %level, align 8
  %tail12 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %19, i32 0, i32 1
  %20 = load i32, ptr %tail12, align 4
  %cmp = icmp ne i32 %20, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load i32, ptr %slot, align 4
  %pool_13 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %22 = load ptr, ptr %level, align 8
  %tail14 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i32 0, i32 1
  %23 = load i32, ptr %tail14, align 4
  %call15 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_13, i32 noundef %23) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call15, i32 0, i32 6
  store i32 %21, ptr %next, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load i32, ptr %slot, align 4
  %25 = load ptr, ptr %level, align 8
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %25, i32 0, i32 0
  store i32 %24, ptr %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, ptr %slot, align 4
  %27 = load ptr, ptr %level, align 8
  %tail16 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %27, i32 0, i32 1
  store i32 %26, ptr %tail16, align 4
  %28 = load i32, ptr %remaining.addr, align 4
  %conv = zext i32 %28 to i64
  %29 = load ptr, ptr %level, align 8
  %quantity17 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %29, i32 0, i32 2
  %30 = load i64, ptr %quantity17, align 8
  %add = add i64 %30, %conv
  store i64 %add, ptr %quantity17, align 8
  %31 = load ptr, ptr %level, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %31, i32 0, i32 3
  %32 = load i32, ptr %orders, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %orders, align 8
  %33 = load i32, ptr %remaining.addr, align 4
  %conv18 = zext i32 %33 to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 11
  %34 = load i64, ptr %resting_quantity_, align 8
  %add19 = add i64 %34, %conv18
  store i64 %add19, ptr %resting_quantity_, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %price_index) #17
  %35 = load ptr, ptr %command.addr, align 8
  %price20 = getelementptr inbounds %"struct.ledger::Command", ptr %35, i32 0, i32 2
  %36 = load i64, ptr %price20, align 8
  %call21 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %36) #17
  store i64 %call21, ptr %price_index, align 8
  %37 = load i64, ptr %price_index, align 8
  %rem = urem i64 %37, 64
  %shl = shl i64 1, %rem
  %38 = load ptr, ptr %command.addr, align 8
  %side22 = getelementptr inbounds %"struct.ledger::Command", ptr %38, i32 0, i32 4
  %39 = load i8, ptr %side22, align 4
  %call23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %39) #17
  %40 = load i64, ptr %price_index, align 8
  %div = udiv i64 %40, 64
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call23, i64 noundef %div) #17
  %41 = load i64, ptr %call24, align 8
  %or = or i64 %41, %shl
  store i64 %or, ptr %call24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_best) #17
  %42 = load ptr, ptr %command.addr, align 8
  %side25 = getelementptr inbounds %"struct.ledger::Command", ptr %42, i32 0, i32 4
  %43 = load i8, ptr %side25, align 4
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %43) #17
  store ptr %call26, ptr %current_best, align 8
  %44 = load ptr, ptr %current_best, align 8
  %45 = load i64, ptr %44, align 8
  %cmp27 = icmp eq i64 %45, -1
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %46 = load ptr, ptr %command.addr, align 8
  %side28 = getelementptr inbounds %"struct.ledger::Command", ptr %46, i32 0, i32 4
  %47 = load i8, ptr %side28, align 4
  %cmp29 = icmp eq i8 %47, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %48 = load i64, ptr %price_index, align 8
  %49 = load ptr, ptr %current_best, align 8
  %50 = load i64, ptr %49, align 8
  %cmp30 = icmp ugt i64 %48, %50
  br i1 %cmp30, label %if.then32, label %if.end33

cond.false:                                       ; preds = %lor.lhs.false
  %51 = load i64, ptr %price_index, align 8
  %52 = load ptr, ptr %current_best, align 8
  %53 = load i64, ptr %52, align 8
  %cmp31 = icmp ult i64 %51, %53
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.false, %cond.true, %if.end
  %54 = load i64, ptr %price_index, align 8
  %55 = load ptr, ptr %current_best, align 8
  store i64 %54, ptr %55, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %cond.false, %cond.true
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %56 = load ptr, ptr %command.addr, align 8
  %id34 = getelementptr inbounds %"struct.ledger::Command", ptr %56, i32 0, i32 1
  %57 = load i64, ptr %id34, align 8
  %58 = load i32, ptr %slot, align 4
  call void @_ZN6ledger6detail7IdIndex6insertEmj(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %57, i32 noundef %58) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_best) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %price_index) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %order) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN6ledger6detail9OrderPool7acquireEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %slot = alloca i32, align 4
  %ref.tmp = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #17
  %free_head_2 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  %1 = load i32, ptr %free_head_2, align 8
  store i32 %1, ptr %slot, align 4
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %slot, align 4
  %conv = zext i32 %2 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call, i32 0, i32 6
  %3 = load i32, ptr %next, align 4
  %free_head_3 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  store i32 %3, ptr %free_head_3, align 8
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
  %nodes_5 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %4 = load i32, ptr %slot, align 4
  %conv6 = zext i32 %4 to i64
  %call7 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_5, i64 noundef %conv6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call7, ptr align 8 %ref.tmp, i64 33, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  %nodes_8 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %5 = load i32, ptr %slot, align 4
  %conv9 = zext i32 %5 to i64
  %call10 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_8, i64 noundef %conv9) #17
  %live11 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call10, i32 0, i32 7
  store i8 1, ptr %live11, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 2
  %6 = load i64, ptr %size_, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %size_, align 8
  %7 = load i32, ptr %slot, align 4
  store i32 %7, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %slot) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %slot.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndex6insertEmj(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id, i32 noundef %slot) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %slot.addr = alloca i32, align 4
  %position = alloca i64, align 8
  %ref.tmp = alloca %"struct.ledger::detail::IdIndex::Entry", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #17
  %0 = load i64, ptr %id.addr, align 8
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0) #17
  store i64 %call, ptr %position, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %position, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %1) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %2 = load i64, ptr %id3, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %position, align 8
  %add = add i64 %3, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %4
  store i64 %and, ptr %position, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %id4 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 0
  %5 = load i64, ptr %id.addr, align 8
  store i64 %5, ptr %id4, align 8
  %slot5 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 1
  %6 = load i32, ptr %slot.addr, align 4
  store i32 %6, ptr %slot5, align 8
  %entries_6 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %7 = load i64, ptr %position, align 8
  %call7 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_6, i64 noundef %7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call7, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 2
  %8 = load i64, ptr %size_, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %size_, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  %order = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  %price_index = alloca i64, align 8
  %level = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %order) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %0 = load i32, ptr %slot.addr, align 4
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %order, ptr align 8 %call, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %price_index) #17
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 1
  %1 = load i64, ptr %price, align 8
  %call2 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %1) #17
  store i64 %call2, ptr %price_index, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %level) #17
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %2 = load i8, ptr %side, align 4
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %2) #17
  %3 = load i64, ptr %price_index, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call3, i64 noundef %3) #17
  store ptr %call4, ptr %level, align 8
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %4 = load i32, ptr %previous, align 8
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %5 = load i32, ptr %next, align 4
  %pool_5 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %previous6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %6 = load i32, ptr %previous6, align 8
  %call7 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_5, i32 noundef %6) #17
  %next8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call7, i32 0, i32 6
  store i32 %5, ptr %next8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %next9 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %7 = load i32, ptr %next9, align 4
  %8 = load ptr, ptr %level, align 8
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %8, i32 0, i32 0
  store i32 %7, ptr %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next10 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %9 = load i32, ptr %next10, align 4
  %cmp11 = icmp ne i32 %9, -1
  br i1 %cmp11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %if.end
  %previous13 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %10 = load i32, ptr %previous13, align 8
  %pool_14 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %next15 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %11 = load i32, ptr %next15, align 4
  %call16 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_14, i32 noundef %11) #17
  %previous17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call16, i32 0, i32 5
  store i32 %10, ptr %previous17, align 8
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %previous19 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %12 = load i32, ptr %previous19, align 8
  %13 = load ptr, ptr %level, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %13, i32 0, i32 1
  store i32 %12, ptr %tail, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then12
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %14 = load i32, ptr %quantity, align 8
  %conv = zext i32 %14 to i64
  %15 = load ptr, ptr %level, align 8
  %quantity21 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %15, i32 0, i32 2
  %16 = load i64, ptr %quantity21, align 8
  %sub = sub i64 %16, %conv
  store i64 %sub, ptr %quantity21, align 8
  %quantity22 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %17 = load i32, ptr %quantity22, align 8
  %conv23 = zext i32 %17 to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 11
  %18 = load i64, ptr %resting_quantity_, align 8
  %sub24 = sub i64 %18, %conv23
  store i64 %sub24, ptr %resting_quantity_, align 8
  %19 = load ptr, ptr %level, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %19, i32 0, i32 3
  %20 = load i32, ptr %orders, align 8
  %dec = add i32 %20, -1
  store i32 %dec, ptr %orders, align 8
  %21 = load ptr, ptr %level, align 8
  %orders25 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %21, i32 0, i32 3
  %22 = load i32, ptr %orders25, align 8
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end20
  %23 = load i64, ptr %price_index, align 8
  %rem = urem i64 %23, 64
  %shl = shl i64 1, %rem
  %not = xor i64 %shl, -1
  %side27 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %24 = load i8, ptr %side27, align 4
  %call28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %24) #17
  %25 = load i64, ptr %price_index, align 8
  %div = udiv i64 %25, 64
  %call29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call28, i64 noundef %div) #17
  %26 = load i64, ptr %call29, align 8
  %and = and i64 %26, %not
  store i64 %and, ptr %call29, align 8
  %side30 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %27 = load i8, ptr %side30, align 4
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %27) #17
  %28 = load i64, ptr %call31, align 8
  %29 = load i64, ptr %price_index, align 8
  %cmp32 = icmp eq i64 %28, %29
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.then26
  %side34 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %30 = load i8, ptr %side34, align 4
  %31 = load i64, ptr %price_index, align 8
  %call35 = call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %30, i64 noundef %31) #17
  %side36 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %32 = load i8, ptr %side36, align 4
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %32) #17
  store i64 %call35, ptr %call37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then26
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end20
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 0
  %33 = load i64, ptr %id, align 8
  %call40 = call noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %33) #17
  %pool_41 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %34 = load i32, ptr %slot.addr, align 4
  call void @_ZN6ledger6detail9OrderPool7releaseEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_41, i32 noundef %34) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %price_index) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %order) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %hole = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cursor = alloca i64, align 8
  %home = alloca i64, align 8
  %ref.tmp = alloca %"struct.ledger::detail::IdIndex::Entry", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %id.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole) #17
  %1 = load i64, ptr %id.addr, align 8
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %1) #17
  store i64 %call, ptr %hole, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %2 = load i64, ptr %hole, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %2) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %3 = load i64, ptr %id3, align 8
  %tobool4 = icmp ne i64 %3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %entries_5 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %4 = load i64, ptr %hole, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_5, i64 noundef %4) #17
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %5 = load i64, ptr %id7, align 8
  %6 = load i64, ptr %id.addr, align 8
  %cmp = icmp ne i64 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, ptr %hole, align 8
  %add = add i64 %8, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %9 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %9
  store i64 %and, ptr %hole, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.end
  %entries_8 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %10 = load i64, ptr %hole, align 8
  %call9 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_8, i64 noundef %10) #17
  %id10 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call9, i32 0, i32 0
  %11 = load i64, ptr %id10, align 8
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #17
  %12 = load i64, ptr %hole, align 8
  %add14 = add i64 %12, 1
  %mask_15 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %13 = load i64, ptr %mask_15, align 8
  %and16 = and i64 %add14, %13
  store i64 %and16, ptr %cursor, align 8
  br label %while.cond17

while.cond17:                                     ; preds = %if.end38, %if.end13
  %entries_18 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %14 = load i64, ptr %cursor, align 8
  %call19 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_18, i64 noundef %14) #17
  %id20 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call19, i32 0, i32 0
  %15 = load i64, ptr %id20, align 8
  %tobool21 = icmp ne i64 %15, 0
  br i1 %tobool21, label %while.body22, label %while.end42

while.body22:                                     ; preds = %while.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %home) #17
  %entries_23 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %16 = load i64, ptr %cursor, align 8
  %call24 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_23, i64 noundef %16) #17
  %id25 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call24, i32 0, i32 0
  %17 = load i64, ptr %id25, align 8
  %call26 = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %17) #17
  store i64 %call26, ptr %home, align 8
  %18 = load i64, ptr %hole, align 8
  %19 = load i64, ptr %home, align 8
  %sub = sub i64 %18, %19
  %mask_27 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %20 = load i64, ptr %mask_27, align 8
  %and28 = and i64 %sub, %20
  %21 = load i64, ptr %cursor, align 8
  %22 = load i64, ptr %home, align 8
  %sub29 = sub i64 %21, %22
  %mask_30 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %23 = load i64, ptr %mask_30, align 8
  %and31 = and i64 %sub29, %23
  %cmp32 = icmp ult i64 %and28, %and31
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %while.body22
  %entries_34 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %24 = load i64, ptr %cursor, align 8
  %call35 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_34, i64 noundef %24) #17
  %entries_36 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %25 = load i64, ptr %hole, align 8
  %call37 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_36, i64 noundef %25) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call37, ptr align 8 %call35, i64 12, i1 false)
  %26 = load i64, ptr %cursor, align 8
  store i64 %26, ptr %hole, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %while.body22
  %27 = load i64, ptr %cursor, align 8
  %add39 = add i64 %27, 1
  %mask_40 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %28 = load i64, ptr %mask_40, align 8
  %and41 = and i64 %add39, %28
  store i64 %and41, ptr %cursor, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %home) #17
  br label %while.cond17, !llvm.loop !19

while.end42:                                      ; preds = %while.cond17
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %id43 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 0
  store i64 0, ptr %id43, align 8
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 1
  store i32 -1, ptr %slot, align 8
  %entries_44 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %29 = load i64, ptr %hole, align 8
  %call45 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_44, i64 noundef %29) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call45, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 2
  %30 = load i64, ptr %size_, align 8
  %dec = add i64 %30, -1
  store i64 %dec, ptr %size_, align 8
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #17
  br label %cleanup

cleanup:                                          ; preds = %while.end42, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole) #17
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %31 = load i1, ptr %retval, align 1
  ret i1 %31
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPool7releaseEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %slot) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  %ref.tmp = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
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
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %slot.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call, ptr align 8 %ref.tmp, i64 33, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  %1 = load i32, ptr %free_head_, align 8
  %nodes_2 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %slot.addr, align 4
  %conv3 = zext i32 %2 to i64
  %call4 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_2, i64 noundef %conv3) #17
  %next5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call4, i32 0, i32 6
  store i32 %1, ptr %next5, align 4
  %3 = load i32, ptr %slot.addr, align 4
  %free_head_6 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  store i32 %3, ptr %free_head_6, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 2
  %4 = load i64, ptr %size_, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot, i64 noundef %sequence, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  %sequence.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %order = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  store i64 %sequence, ptr %sequence.addr, align 8
  store ptr %output, ptr %output.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %order) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %0 = load i32, ptr %slot.addr, align 4
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %order, ptr align 8 %call, i64 40, i1 false)
  %1 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence2 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  %2 = load i64, ptr %sequence.addr, align 8
  store i64 %2, ptr %sequence2, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 4, ptr %type, align 8
  %reason = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  store i8 0, ptr %reason, align 1
  %id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %id3 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 0
  %3 = load i64, ptr %id3, align 8
  store i64 %3, ptr %id, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %side4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %4 = load i8, ptr %side4, align 4
  store i8 %4, ptr %side, align 8
  %price = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 1
  %5 = load i64, ptr %price5, align 8
  store i64 %5, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %quantity6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %6 = load i32, ptr %quantity6, align 8
  store i32 %6, ptr %quantity, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  store i32 0, ptr %remaining, align 4
  %call7 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %quantity8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %7 = load i32, ptr %quantity8, align 8
  %conv = zext i32 %7 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 2
  %8 = load i64, ptr %cancelled, align 8
  %add = add i64 %8, %conv
  store i64 %add, ptr %cancelled, align 8
  %9 = load i32, ptr %slot.addr, align 4
  call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this1, i32 noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %order) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(56) %event) #6 comdat align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %event, ptr %event.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %size_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %size_, align 8
  %storage_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %storage_) #17
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %event.addr, align 8
  %storage_2 = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 0
  %size_3 = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 1
  %2 = load i64, ptr %size_3, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %size_3, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EEixEm(ptr noundef nonnull align 8 dereferenceable(16) %storage_2, i64 noundef %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call4, ptr align 8 %1, i64 56, i1 false)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1
  ret i1 %3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext %reason, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %command.addr = alloca ptr, align 8
  %reason.addr = alloca i8, align 1
  %output.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %command, ptr %command.addr, align 8
  store i8 %reason, ptr %reason.addr, align 1
  store ptr %output, ptr %output.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  %1 = load ptr, ptr %command.addr, align 8
  %sequence2 = getelementptr inbounds %"struct.ledger::Command", ptr %1, i32 0, i32 0
  %2 = load i64, ptr %sequence2, align 8
  store i64 %2, ptr %sequence, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 6, ptr %type, align 8
  %reason3 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  %3 = load i8, ptr %reason.addr, align 1
  store i8 %3, ptr %reason3, align 1
  %id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %4 = load ptr, ptr %command.addr, align 8
  %id4 = getelementptr inbounds %"struct.ledger::Command", ptr %4, i32 0, i32 1
  %5 = load i64, ptr %id4, align 8
  store i64 %5, ptr %id, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %6 = load ptr, ptr %command.addr, align 8
  %side5 = getelementptr inbounds %"struct.ledger::Command", ptr %6, i32 0, i32 4
  %7 = load i8, ptr %side5, align 4
  store i8 %7, ptr %side, align 8
  %price = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  %8 = load ptr, ptr %command.addr, align 8
  %price6 = getelementptr inbounds %"struct.ledger::Command", ptr %8, i32 0, i32 2
  %9 = load i64, ptr %price6, align 8
  store i64 %9, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %10 = load ptr, ptr %command.addr, align 8
  %quantity7 = getelementptr inbounds %"struct.ledger::Command", ptr %10, i32 0, i32 3
  %11 = load i32, ptr %quantity7, align 8
  store i32 %11, ptr %quantity, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  store i32 0, ptr %remaining, align 4
  %call = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %12 = load ptr, ptr %command.addr, align 8
  %quantity8 = getelementptr inbounds %"struct.ledger::Command", ptr %12, i32 0, i32 3
  %13 = load i32, ptr %quantity8, align 8
  %conv = zext i32 %13 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %rejected = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 4
  %14 = load i64, ptr %rejected, align 8
  %add = add i64 %14, %conv
  store i64 %add, ptr %rejected, align 8
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook7processERKNS_7CommandERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %command.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %existing = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %report_price = alloca i64, align 8
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  %remaining107 = alloca i32, align 4
  %opposite = alloca i8, align 1
  %maker_slot = alloca i32, align 4
  %maker = alloca ptr, align 8
  %traded = alloca i32, align 4
  %ref.tmp140 = alloca %"struct.ledger::Event", align 8
  %ref.tmp156 = alloca %"struct.ledger::Event", align 8
  %ref.tmp176 = alloca %"struct.ledger::Event", align 8
  %ref.tmp210 = alloca %"struct.ledger::Event", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %command, ptr %command.addr, align 8
  store ptr %output, ptr %output.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %output.addr, align 8
  call void @_ZN6ledger11EventBuffer5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %1 = load ptr, ptr %output.addr, align 8
  %call = call noundef i64 @_ZNK6ledger11EventBuffer8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 0
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 2
  %2 = load i32, ptr %max_orders, align 8
  %conv = zext i32 %2 to i64
  %call2 = call noundef i64 @_ZN6ledger23required_event_capacityEm(i64 noundef %conv) #17
  %cmp = icmp ult i64 %call, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %command.addr, align 8
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %3, i32 0, i32 5
  %4 = load i8, ptr %action, align 1
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp ugt i32 %conv3, 3
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %command.addr, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %5, i32 0, i32 4
  %6 = load i8, ptr %side, align 4
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp ugt i32 %conv5, 1
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %command.addr, align 8
  %tif = getelementptr inbounds %"struct.ledger::Command", ptr %7, i32 0, i32 6
  %8 = load i8, ptr %tif, align 2
  %conv8 = zext i8 %8 to i32
  %cmp9 = icmp ugt i32 %conv8, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  %9 = load ptr, ptr %command.addr, align 8
  %10 = load ptr, ptr %output.addr, align 8
  %call11 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %9, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(24) %10) #17
  store i32 %call11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false7
  %11 = load ptr, ptr %command.addr, align 8
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %11, i32 0, i32 1
  %12 = load i64, ptr %id, align 8
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end12
  %13 = load ptr, ptr %command.addr, align 8
  %14 = load ptr, ptr %output.addr, align 8
  %call14 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %13, i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(24) %14) #17
  store i32 %call14, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end12
  %15 = load ptr, ptr %command.addr, align 8
  %action16 = getelementptr inbounds %"struct.ledger::Command", ptr %15, i32 0, i32 5
  %16 = load i8, ptr %action16, align 1
  %cmp17 = icmp ne i8 %16, 2
  br i1 %cmp17, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end15
  %17 = load ptr, ptr %command.addr, align 8
  %quantity = getelementptr inbounds %"struct.ledger::Command", ptr %17, i32 0, i32 3
  %18 = load i32, ptr %quantity, align 8
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %command.addr, align 8
  %20 = load ptr, ptr %output.addr, align 8
  %call20 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %19, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(24) %20) #17
  store i32 %call20, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end15
  %21 = load ptr, ptr %command.addr, align 8
  %action22 = getelementptr inbounds %"struct.ledger::Command", ptr %21, i32 0, i32 5
  %22 = load i8, ptr %action22, align 1
  %cmp23 = icmp eq i8 %22, 0
  br i1 %cmp23, label %land.lhs.true27, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %23 = load ptr, ptr %command.addr, align 8
  %action25 = getelementptr inbounds %"struct.ledger::Command", ptr %23, i32 0, i32 5
  %24 = load i8, ptr %action25, align 1
  %cmp26 = icmp eq i8 %24, 3
  br i1 %cmp26, label %land.lhs.true27, label %if.end36

land.lhs.true27:                                  ; preds = %lor.lhs.false24, %if.end21
  %25 = load ptr, ptr %command.addr, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %25, i32 0, i32 2
  %26 = load i64, ptr %price, align 8
  %config_28 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_28, i32 0, i32 0
  %27 = load i64, ptr %min_price, align 8
  %cmp29 = icmp slt i64 %26, %27
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true27
  %28 = load ptr, ptr %command.addr, align 8
  %price31 = getelementptr inbounds %"struct.ledger::Command", ptr %28, i32 0, i32 2
  %29 = load i64, ptr %price31, align 8
  %config_32 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 0
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_32, i32 0, i32 1
  %30 = load i64, ptr %max_price, align 8
  %cmp33 = icmp sgt i64 %29, %30
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %lor.lhs.false30, %land.lhs.true27
  %31 = load ptr, ptr %command.addr, align 8
  %32 = load ptr, ptr %output.addr, align 8
  %call35 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %31, i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(24) %32) #17
  store i32 %call35, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false30, %lor.lhs.false24
  call void @llvm.lifetime.start.p0(i64 4, ptr %existing) #17
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %33 = load ptr, ptr %command.addr, align 8
  %id37 = getelementptr inbounds %"struct.ledger::Command", ptr %33, i32 0, i32 1
  %34 = load i64, ptr %id37, align 8
  %call38 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %34) #17
  store i32 %call38, ptr %existing, align 4
  %35 = load ptr, ptr %command.addr, align 8
  %action39 = getelementptr inbounds %"struct.ledger::Command", ptr %35, i32 0, i32 5
  %36 = load i8, ptr %action39, align 1
  %cmp40 = icmp eq i8 %36, 2
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end36
  %37 = load ptr, ptr %command.addr, align 8
  %action42 = getelementptr inbounds %"struct.ledger::Command", ptr %37, i32 0, i32 5
  %38 = load i8, ptr %action42, align 1
  %cmp43 = icmp eq i8 %38, 3
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %lor.lhs.false41, %if.end36
  %39 = load i32, ptr %existing, align 4
  %cmp45 = icmp eq i32 %39, -1
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then44
  %40 = load ptr, ptr %command.addr, align 8
  %41 = load ptr, ptr %output.addr, align 8
  %call47 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %40, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(24) %41) #17
  store i32 %call47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false41
  %42 = load i32, ptr %existing, align 4
  %cmp49 = icmp ne i32 %42, -1
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else
  %43 = load ptr, ptr %command.addr, align 8
  %44 = load ptr, ptr %output.addr, align 8
  %call51 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %43, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %44) #17
  store i32 %call51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end48
  %45 = load ptr, ptr %command.addr, align 8
  %action54 = getelementptr inbounds %"struct.ledger::Command", ptr %45, i32 0, i32 5
  %46 = load i8, ptr %action54, align 1
  %cmp55 = icmp eq i8 %46, 2
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %47 = load i32, ptr %existing, align 4
  %48 = load ptr, ptr %command.addr, align 8
  %sequence = getelementptr inbounds %"struct.ledger::Command", ptr %48, i32 0, i32 0
  %49 = load i64, ptr %sequence, align 8
  %50 = load ptr, ptr %output.addr, align 8
  call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i32 noundef %47, i64 noundef %49, ptr noundef nonnull align 8 dereferenceable(24) %50) #17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %51 = load ptr, ptr %command.addr, align 8
  %action58 = getelementptr inbounds %"struct.ledger::Command", ptr %51, i32 0, i32 5
  %52 = load i8, ptr %action58, align 1
  %cmp59 = icmp eq i8 %52, 3
  br i1 %cmp59, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.end57
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %53 = load i32, ptr %existing, align 4
  %call61 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %53) #17
  %side62 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call61, i32 0, i32 3
  %54 = load i8, ptr %side62, align 4
  %55 = load ptr, ptr %command.addr, align 8
  %side63 = getelementptr inbounds %"struct.ledger::Command", ptr %55, i32 0, i32 4
  %56 = load i8, ptr %side63, align 4
  %cmp64 = icmp ne i8 %54, %56
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true60
  %57 = load ptr, ptr %command.addr, align 8
  %58 = load ptr, ptr %output.addr, align 8
  %call66 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %57, i8 noundef zeroext 9, ptr noundef nonnull align 8 dereferenceable(24) %58) #17
  store i32 %call66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true60, %if.end57
  %59 = load ptr, ptr %command.addr, align 8
  %action68 = getelementptr inbounds %"struct.ledger::Command", ptr %59, i32 0, i32 5
  %60 = load i8, ptr %action68, align 1
  %cmp69 = icmp eq i8 %60, 0
  br i1 %cmp69, label %land.lhs.true70, label %if.end78

land.lhs.true70:                                  ; preds = %if.end67
  %61 = load ptr, ptr %command.addr, align 8
  %tif71 = getelementptr inbounds %"struct.ledger::Command", ptr %61, i32 0, i32 6
  %62 = load i8, ptr %tif71, align 2
  %cmp72 = icmp eq i8 %62, 0
  br i1 %cmp72, label %land.lhs.true73, label %if.end78

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %pool_74 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call75 = call noundef zeroext i1 @_ZNK6ledger6detail9OrderPool4fullEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_74) #17
  br i1 %call75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true73
  %63 = load ptr, ptr %command.addr, align 8
  %64 = load ptr, ptr %output.addr, align 8
  %call77 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %63, i8 noundef zeroext 7, ptr noundef nonnull align 8 dereferenceable(24) %64) #17
  store i32 %call77, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true73, %land.lhs.true70, %if.end67
  %65 = load ptr, ptr %command.addr, align 8
  %tif79 = getelementptr inbounds %"struct.ledger::Command", ptr %65, i32 0, i32 6
  %66 = load i8, ptr %tif79, align 2
  %cmp80 = icmp eq i8 %66, 2
  br i1 %cmp80, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %67 = load ptr, ptr %command.addr, align 8
  %call82 = call noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %67) #17
  br i1 %call82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81
  %68 = load ptr, ptr %command.addr, align 8
  %69 = load ptr, ptr %output.addr, align 8
  %call84 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %68, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(24) %69) #17
  store i32 %call84, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true81, %if.end78
  %70 = load ptr, ptr %command.addr, align 8
  %action86 = getelementptr inbounds %"struct.ledger::Command", ptr %70, i32 0, i32 5
  %71 = load i8, ptr %action86, align 1
  %cmp87 = icmp eq i8 %71, 3
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %72 = load i32, ptr %existing, align 4
  %73 = load ptr, ptr %command.addr, align 8
  %sequence89 = getelementptr inbounds %"struct.ledger::Command", ptr %73, i32 0, i32 0
  %74 = load i64, ptr %sequence89, align 8
  %75 = load ptr, ptr %output.addr, align 8
  call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i32 noundef %72, i64 noundef %74, ptr noundef nonnull align 8 dereferenceable(24) %75) #17
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %report_price) #17
  %76 = load ptr, ptr %command.addr, align 8
  %action91 = getelementptr inbounds %"struct.ledger::Command", ptr %76, i32 0, i32 5
  %77 = load i8, ptr %action91, align 1
  %cmp92 = icmp eq i8 %77, 1
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end90
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  %78 = load ptr, ptr %command.addr, align 8
  %price93 = getelementptr inbounds %"struct.ledger::Command", ptr %78, i32 0, i32 2
  %79 = load i64, ptr %price93, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %79, %cond.false ]
  store i64 %cond, ptr %report_price, align 8
  %80 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence94 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  %81 = load ptr, ptr %command.addr, align 8
  %sequence95 = getelementptr inbounds %"struct.ledger::Command", ptr %81, i32 0, i32 0
  %82 = load i64, ptr %sequence95, align 8
  store i64 %82, ptr %sequence94, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 0, ptr %type, align 8
  %reason = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  store i8 0, ptr %reason, align 1
  %id96 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %83 = load ptr, ptr %command.addr, align 8
  %id97 = getelementptr inbounds %"struct.ledger::Command", ptr %83, i32 0, i32 1
  %84 = load i64, ptr %id97, align 8
  store i64 %84, ptr %id96, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side98 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %85 = load ptr, ptr %command.addr, align 8
  %side99 = getelementptr inbounds %"struct.ledger::Command", ptr %85, i32 0, i32 4
  %86 = load i8, ptr %side99, align 4
  store i8 %86, ptr %side98, align 8
  %price100 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  %87 = load i64, ptr %report_price, align 8
  store i64 %87, ptr %price100, align 8
  %quantity101 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %88 = load ptr, ptr %command.addr, align 8
  %quantity102 = getelementptr inbounds %"struct.ledger::Command", ptr %88, i32 0, i32 3
  %89 = load i32, ptr %quantity102, align 8
  store i32 %89, ptr %quantity101, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  %90 = load ptr, ptr %command.addr, align 8
  %quantity103 = getelementptr inbounds %"struct.ledger::Command", ptr %90, i32 0, i32 3
  %91 = load i32, ptr %quantity103, align 8
  store i32 %91, ptr %remaining, align 4
  %call104 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %92 = load ptr, ptr %command.addr, align 8
  %quantity105 = getelementptr inbounds %"struct.ledger::Command", ptr %92, i32 0, i32 3
  %93 = load i32, ptr %quantity105, align 8
  %conv106 = zext i32 %93 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 0
  %94 = load i64, ptr %submitted, align 8
  %add = add i64 %94, %conv106
  store i64 %add, ptr %submitted, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining107) #17
  %95 = load ptr, ptr %command.addr, align 8
  %quantity108 = getelementptr inbounds %"struct.ledger::Command", ptr %95, i32 0, i32 3
  %96 = load i32, ptr %quantity108, align 8
  store i32 %96, ptr %remaining107, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %opposite) #17
  %97 = load ptr, ptr %command.addr, align 8
  %side109 = getelementptr inbounds %"struct.ledger::Command", ptr %97, i32 0, i32 4
  %98 = load i8, ptr %side109, align 4
  %cmp110 = icmp eq i8 %98, 0
  %99 = zext i1 %cmp110 to i64
  %cond111 = select i1 %cmp110, i8 1, i8 0
  store i8 %cond111, ptr %opposite, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end197, %cond.end
  %100 = load i32, ptr %remaining107, align 4
  %tobool112 = icmp ne i32 %100, 0
  br i1 %tobool112, label %land.lhs.true113, label %land.end

land.lhs.true113:                                 ; preds = %while.cond
  %101 = load i8, ptr %opposite, align 1
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %101) #17
  %102 = load i64, ptr %call114, align 8
  %cmp115 = icmp ne i64 %102, -1
  br i1 %cmp115, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true113
  %103 = load ptr, ptr %command.addr, align 8
  %104 = load i8, ptr %opposite, align 1
  %call116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %104) #17
  %105 = load i64, ptr %call116, align 8
  %call117 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %105) #17
  %call118 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %103, i64 noundef %call117) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true113, %while.cond
  %106 = phi i1 [ false, %land.lhs.true113 ], [ false, %while.cond ], [ %call118, %land.rhs ]
  br i1 %106, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %maker_slot) #17
  %107 = load i8, ptr %opposite, align 1
  %call119 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %107) #17
  %108 = load i8, ptr %opposite, align 1
  %call120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %108) #17
  %109 = load i64, ptr %call120, align 8
  %call121 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call119, i64 noundef %109) #17
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call121, i32 0, i32 0
  %110 = load i32, ptr %head, align 8
  store i32 %110, ptr %maker_slot, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %maker) #17
  %pool_122 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %111 = load i32, ptr %maker_slot, align 4
  %call123 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_122, i32 noundef %111) #17
  store ptr %call123, ptr %maker, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %traded) #17
  %112 = load ptr, ptr %maker, align 8
  %quantity124 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %112, i32 0, i32 2
  %call125 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %remaining107, ptr noundef nonnull align 4 dereferenceable(4) %quantity124)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  %113 = load i32, ptr %call125, align 4
  store i32 %113, ptr %traded, align 4
  %114 = load i32, ptr %traded, align 4
  %115 = load i32, ptr %remaining107, align 4
  %sub = sub i32 %115, %114
  store i32 %sub, ptr %remaining107, align 4
  %116 = load i32, ptr %traded, align 4
  %117 = load ptr, ptr %maker, align 8
  %quantity126 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %117, i32 0, i32 2
  %118 = load i32, ptr %quantity126, align 8
  %sub127 = sub i32 %118, %116
  store i32 %sub127, ptr %quantity126, align 8
  %119 = load i32, ptr %traded, align 4
  %conv128 = zext i32 %119 to i64
  %120 = load i8, ptr %opposite, align 1
  %call129 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %120) #17
  %121 = load i8, ptr %opposite, align 1
  %call130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %121) #17
  %122 = load i64, ptr %call130, align 8
  %call131 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call129, i64 noundef %122) #17
  %quantity132 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call131, i32 0, i32 2
  %123 = load i64, ptr %quantity132, align 8
  %sub133 = sub i64 %123, %conv128
  store i64 %sub133, ptr %quantity132, align 8
  %124 = load i32, ptr %traded, align 4
  %conv134 = zext i32 %124 to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 11
  %125 = load i64, ptr %resting_quantity_, align 8
  %sub135 = sub i64 %125, %conv134
  store i64 %sub135, ptr %resting_quantity_, align 8
  %126 = load i32, ptr %traded, align 4
  %conv136 = zext i32 %126 to i64
  %statistics_137 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_137, i32 0, i32 1
  %127 = load i64, ptr %executed, align 8
  %add138 = add i64 %127, %conv136
  store i64 %add138, ptr %executed, align 8
  %statistics_139 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %trade_count = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_139, i32 0, i32 5
  %128 = load i64, ptr %trade_count, align 8
  %inc = add i64 %128, 1
  store i64 %inc, ptr %trade_count, align 8
  %129 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp140) #17
  %sequence141 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 0
  %130 = load ptr, ptr %command.addr, align 8
  %sequence142 = getelementptr inbounds %"struct.ledger::Command", ptr %130, i32 0, i32 0
  %131 = load i64, ptr %sequence142, align 8
  store i64 %131, ptr %sequence141, align 8
  %type143 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 1
  store i8 1, ptr %type143, align 8
  %reason144 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 2
  store i8 0, ptr %reason144, align 1
  %id145 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 3
  %132 = load ptr, ptr %command.addr, align 8
  %id146 = getelementptr inbounds %"struct.ledger::Command", ptr %132, i32 0, i32 1
  %133 = load i64, ptr %id146, align 8
  store i64 %133, ptr %id145, align 8
  %contra_id147 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 4
  %134 = load ptr, ptr %maker, align 8
  %id148 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %134, i32 0, i32 0
  %135 = load i64, ptr %id148, align 8
  store i64 %135, ptr %contra_id147, align 8
  %side149 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 5
  %136 = load ptr, ptr %command.addr, align 8
  %side150 = getelementptr inbounds %"struct.ledger::Command", ptr %136, i32 0, i32 4
  %137 = load i8, ptr %side150, align 4
  store i8 %137, ptr %side149, align 8
  %price151 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 6
  %138 = load ptr, ptr %maker, align 8
  %price152 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %138, i32 0, i32 1
  %139 = load i64, ptr %price152, align 8
  store i64 %139, ptr %price151, align 8
  %quantity153 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 7
  %140 = load i32, ptr %traded, align 4
  store i32 %140, ptr %quantity153, align 8
  %remaining154 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 8
  %141 = load i32, ptr %remaining107, align 4
  store i32 %141, ptr %remaining154, align 4
  %call155 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp140) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp140) #17
  %142 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp156) #17
  %sequence157 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 0
  %143 = load ptr, ptr %command.addr, align 8
  %sequence158 = getelementptr inbounds %"struct.ledger::Command", ptr %143, i32 0, i32 0
  %144 = load i64, ptr %sequence158, align 8
  store i64 %144, ptr %sequence157, align 8
  %type159 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 1
  %145 = load ptr, ptr %maker, align 8
  %quantity160 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %145, i32 0, i32 2
  %146 = load i32, ptr %quantity160, align 8
  %tobool161 = icmp ne i32 %146, 0
  %147 = zext i1 %tobool161 to i64
  %cond162 = select i1 %tobool161, i8 2, i8 3
  store i8 %cond162, ptr %type159, align 8
  %reason163 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 2
  store i8 0, ptr %reason163, align 1
  %id164 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 3
  %148 = load ptr, ptr %maker, align 8
  %id165 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %148, i32 0, i32 0
  %149 = load i64, ptr %id165, align 8
  store i64 %149, ptr %id164, align 8
  %contra_id166 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 4
  %150 = load ptr, ptr %command.addr, align 8
  %id167 = getelementptr inbounds %"struct.ledger::Command", ptr %150, i32 0, i32 1
  %151 = load i64, ptr %id167, align 8
  store i64 %151, ptr %contra_id166, align 8
  %side168 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 5
  %152 = load ptr, ptr %maker, align 8
  %side169 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %152, i32 0, i32 3
  %153 = load i8, ptr %side169, align 4
  store i8 %153, ptr %side168, align 8
  %price170 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 6
  %154 = load ptr, ptr %maker, align 8
  %price171 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %154, i32 0, i32 1
  %155 = load i64, ptr %price171, align 8
  store i64 %155, ptr %price170, align 8
  %quantity172 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 7
  %156 = load i32, ptr %traded, align 4
  store i32 %156, ptr %quantity172, align 8
  %remaining173 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 8
  %157 = load ptr, ptr %maker, align 8
  %quantity174 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %157, i32 0, i32 2
  %158 = load i32, ptr %quantity174, align 8
  store i32 %158, ptr %remaining173, align 4
  %call175 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %142, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp156) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp156) #17
  %159 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp176) #17
  %sequence177 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 0
  %160 = load ptr, ptr %command.addr, align 8
  %sequence178 = getelementptr inbounds %"struct.ledger::Command", ptr %160, i32 0, i32 0
  %161 = load i64, ptr %sequence178, align 8
  store i64 %161, ptr %sequence177, align 8
  %type179 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 1
  %162 = load i32, ptr %remaining107, align 4
  %tobool180 = icmp ne i32 %162, 0
  %163 = zext i1 %tobool180 to i64
  %cond181 = select i1 %tobool180, i8 2, i8 3
  store i8 %cond181, ptr %type179, align 8
  %reason182 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 2
  store i8 0, ptr %reason182, align 1
  %id183 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 3
  %164 = load ptr, ptr %command.addr, align 8
  %id184 = getelementptr inbounds %"struct.ledger::Command", ptr %164, i32 0, i32 1
  %165 = load i64, ptr %id184, align 8
  store i64 %165, ptr %id183, align 8
  %contra_id185 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 4
  %166 = load ptr, ptr %maker, align 8
  %id186 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %166, i32 0, i32 0
  %167 = load i64, ptr %id186, align 8
  store i64 %167, ptr %contra_id185, align 8
  %side187 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 5
  %168 = load ptr, ptr %command.addr, align 8
  %side188 = getelementptr inbounds %"struct.ledger::Command", ptr %168, i32 0, i32 4
  %169 = load i8, ptr %side188, align 4
  store i8 %169, ptr %side187, align 8
  %price189 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 6
  %170 = load ptr, ptr %maker, align 8
  %price190 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %170, i32 0, i32 1
  %171 = load i64, ptr %price190, align 8
  store i64 %171, ptr %price189, align 8
  %quantity191 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 7
  %172 = load i32, ptr %traded, align 4
  store i32 %172, ptr %quantity191, align 8
  %remaining192 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 8
  %173 = load i32, ptr %remaining107, align 4
  store i32 %173, ptr %remaining192, align 4
  %call193 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %159, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp176) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp176) #17
  %174 = load ptr, ptr %maker, align 8
  %quantity194 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %174, i32 0, i32 2
  %175 = load i32, ptr %quantity194, align 8
  %tobool195 = icmp ne i32 %175, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %invoke.cont
  %176 = load i32, ptr %maker_slot, align 4
  call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this1, i32 noundef %176) #17
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %invoke.cont
  call void @llvm.lifetime.end.p0(i64 4, ptr %traded) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %maker) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %maker_slot) #17
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  %177 = load i32, ptr %remaining107, align 4
  %tobool198 = icmp ne i32 %177, 0
  br i1 %tobool198, label %if.then199, label %if.end225

if.then199:                                       ; preds = %while.end
  %178 = load ptr, ptr %command.addr, align 8
  %action200 = getelementptr inbounds %"struct.ledger::Command", ptr %178, i32 0, i32 5
  %179 = load i8, ptr %action200, align 1
  %cmp201 = icmp ne i8 %179, 1
  br i1 %cmp201, label %land.lhs.true202, label %if.else206

land.lhs.true202:                                 ; preds = %if.then199
  %180 = load ptr, ptr %command.addr, align 8
  %tif203 = getelementptr inbounds %"struct.ledger::Command", ptr %180, i32 0, i32 6
  %181 = load i8, ptr %tif203, align 2
  %cmp204 = icmp eq i8 %181, 0
  br i1 %cmp204, label %if.then205, label %if.else206

if.then205:                                       ; preds = %land.lhs.true202
  %182 = load ptr, ptr %command.addr, align 8
  %183 = load i32, ptr %remaining107, align 4
  call void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this1, ptr noundef nonnull align 8 dereferenceable(31) %182, i32 noundef %183) #17
  br label %if.end224

if.else206:                                       ; preds = %land.lhs.true202, %if.then199
  %184 = load i32, ptr %remaining107, align 4
  %conv207 = zext i32 %184 to i64
  %statistics_208 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_208, i32 0, i32 3
  %185 = load i64, ptr %expired, align 8
  %add209 = add i64 %185, %conv207
  store i64 %add209, ptr %expired, align 8
  %186 = load ptr, ptr %output.addr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp210) #17
  %sequence211 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 0
  %187 = load ptr, ptr %command.addr, align 8
  %sequence212 = getelementptr inbounds %"struct.ledger::Command", ptr %187, i32 0, i32 0
  %188 = load i64, ptr %sequence212, align 8
  store i64 %188, ptr %sequence211, align 8
  %type213 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 1
  store i8 5, ptr %type213, align 8
  %reason214 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 2
  store i8 0, ptr %reason214, align 1
  %id215 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 3
  %189 = load ptr, ptr %command.addr, align 8
  %id216 = getelementptr inbounds %"struct.ledger::Command", ptr %189, i32 0, i32 1
  %190 = load i64, ptr %id216, align 8
  store i64 %190, ptr %id215, align 8
  %contra_id217 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 4
  store i64 0, ptr %contra_id217, align 8
  %side218 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 5
  %191 = load ptr, ptr %command.addr, align 8
  %side219 = getelementptr inbounds %"struct.ledger::Command", ptr %191, i32 0, i32 4
  %192 = load i8, ptr %side219, align 4
  store i8 %192, ptr %side218, align 8
  %price220 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 6
  %193 = load i64, ptr %report_price, align 8
  store i64 %193, ptr %price220, align 8
  %quantity221 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 7
  %194 = load i32, ptr %remaining107, align 4
  store i32 %194, ptr %quantity221, align 8
  %remaining222 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 8
  store i32 0, ptr %remaining222, align 4
  %call223 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %186, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp210) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp210) #17
  br label %if.end224

if.end224:                                        ; preds = %if.else206, %if.then205
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %opposite) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining107) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %report_price) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %if.then83, %if.then76, %if.then65, %if.then56, %if.then50, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %existing) #17
  br label %return

return:                                           ; preds = %cleanup, %if.then34, %if.then19, %if.then13, %if.then10, %if.then
  %195 = load i32, ptr %retval, align 4
  ret i32 %195

terminate.lpad:                                   ; preds = %while.body
  %196 = landingpad { ptr, i32 }
          catch ptr null
  %197 = extractvalue { ptr, i32 } %196, 0
  call void @__clang_call_terminate(ptr %197) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger11EventBuffer5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %size_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 1
  store i64 0, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger11EventBuffer8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %storage_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this1, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %storage_) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6ledger23required_event_capacityEm(i64 noundef %max_orders) #6 comdat {
entry:
  %max_orders.addr = alloca i64, align 8
  store i64 %max_orders, ptr %max_orders.addr, align 8
  %0 = load i64, ptr %max_orders.addr, align 8
  %mul = mul i64 3, %0
  %add = add i64 %mul, 4
  ret i64 %add
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %position = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %id.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #17
  %1 = load i64, ptr %id.addr, align 8
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %1) #17
  store i64 %call, ptr %position, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %2 = load i64, ptr %position, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %2) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %3 = load i64, ptr %id3, align 8
  %tobool4 = icmp ne i64 %3, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %entries_5 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %4 = load i64, ptr %position, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_5, i64 noundef %4) #17
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %5 = load i64, ptr %id7, align 8
  %6 = load i64, ptr %id.addr, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %while.body
  %entries_9 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %7 = load i64, ptr %position, align 8
  %call10 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_9, i64 noundef %7) #17
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call10, i32 0, i32 1
  %8 = load i32, ptr %slot, align 8
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %9 = load i64, ptr %position, align 8
  %add = add i64 %9, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %10 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %10
  store i64 %and, ptr %position, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #17
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail9OrderPool4fullEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  %cmp = icmp eq i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #8 comdat {
entry:
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %__a.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
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
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %append = alloca %class.anon, align 8
  %i = alloca i64, align 8
  %i5 = alloca i64, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store i1 false, ptr %nrvo, align 1
  call void @_ZN6ledger8SnapshotC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i32 0, i32 0
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %orders, i64 noundef %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %stats = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %stats, ptr align 8 %statistics_, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %append) #17
  %0 = getelementptr inbounds %class.anon, ptr %append, i32 0, i32 0
  store ptr %this1, ptr %0, align 8
  %1 = getelementptr inbounds %class.anon, ptr %append, i32 0, i32 1
  store ptr %agg.result, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 5
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  store i64 %call2, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %2 = load i64, ptr %i, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  br label %for.end

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup15

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8
  %sub = sub i64 %6, 1
  invoke void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %append, i8 noundef zeroext 0, i64 noundef %sub)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont4
  %7 = load i64, ptr %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %i, align 8
  br label %for.cond, !llvm.loop !22

lpad3:                                            ; preds = %for.body
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  br label %ehcleanup

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #17
  store i64 0, ptr %i5, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %11 = load i64, ptr %i5, align 8
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 6
  %call7 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %asks_) #17
  %cmp8 = icmp ult i64 %11, %call7
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #17
  br label %for.end14

for.body10:                                       ; preds = %for.cond6
  %12 = load i64, ptr %i5, align 8
  invoke void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %append, i8 noundef zeroext 1, i64 noundef %12)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %for.body10
  br label %for.inc13

for.inc13:                                        ; preds = %invoke.cont12
  %13 = load i64, ptr %i5, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i5, align 8
  br label %for.cond6, !llvm.loop !23

lpad11:                                           ; preds = %for.body10
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  store ptr %15, ptr %exn.slot, align 8
  %16 = extractvalue { ptr, i32 } %14, 1
  store i32 %16, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #17
  br label %ehcleanup

for.end14:                                        ; preds = %for.cond.cleanup9
  store i1 true, ptr %nrvo, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %append) #17
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

ehcleanup:                                        ; preds = %lpad11, %lpad3
  call void @llvm.lifetime.end.p0(i64 16, ptr %append) #17
  br label %ehcleanup15

nrvo.unused:                                      ; preds = %for.end14
  call void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end14
  ret void

ehcleanup15:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup15
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val16 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val16
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8SnapshotC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this1, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %orders) #17
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this1, i32 0, i32 1
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %levels) #17
  %stats = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this1, i32 0, i32 2
  call void @_ZN6ledger10StatisticsC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %stats) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__old_size = alloca i64, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.4) #18
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %1 = load i64, ptr %__n.addr, align 8
  %cmp3 = icmp ult i64 %call2, %1
  br i1 %cmp3, label %if.then4, label %if.end24

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_size) #17
  %call5 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  store i64 %call5, ptr %__old_size, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #17
  %2 = load i64, ptr %__n.addr, align 8
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %2)
  store ptr %call6, ptr %__tmp, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %3 = load ptr, ptr %_M_start, align 8
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 1
  %4 = load ptr, ptr %_M_finish, align 8
  %5 = load ptr, ptr %__tmp, align 8
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call9 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %call8) #17
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl10, i32 0, i32 0
  %6 = load ptr, ptr %_M_start11, align 8
  %_M_impl12 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl12, i32 0, i32 2
  %7 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start14 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl13, i32 0, i32 0
  %8 = load ptr, ptr %_M_start14, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %6, i64 noundef %sub.ptr.div)
  %9 = load ptr, ptr %__tmp, align 8
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %9, ptr %_M_start16, align 8
  %10 = load ptr, ptr %__tmp, align 8
  %11 = load i64, ptr %__old_size, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %10, i64 %11
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %add.ptr, ptr %_M_finish18, align 8
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start20 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl19, i32 0, i32 0
  %12 = load ptr, ptr %_M_start20, align 8
  %13 = load i64, ptr %__n.addr, align 8
  %add.ptr21 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %12, i64 %13
  %_M_impl22 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage23 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl22, i32 0, i32 2
  store ptr %add.ptr21, ptr %_M_end_of_storage23, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_size) #17
  br label %if.end24

if.end24:                                         ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %size_, align 8
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %this, i8 noundef zeroext %side, i64 noundef %price_index) #10 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %side.addr = alloca i8, align 1
  %price_index.addr = alloca i64, align 8
  %level = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp = alloca %"struct.ledger::LevelSnapshot", align 8
  %slot = alloca i32, align 4
  %order = alloca ptr, align 8
  %ref.tmp10 = alloca %"struct.ledger::RestingOrder", align 8
  store ptr %this, ptr %this.addr, align 8
  store i8 %side, ptr %side.addr, align 1
  store i64 %price_index, ptr %price_index.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %level) #17
  %2 = load i8, ptr %side.addr, align 1
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %1, i8 noundef zeroext %2) #17
  %3 = load i64, ptr %price_index.addr, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %3) #17
  store ptr %call2, ptr %level, align 8
  %4 = load ptr, ptr %level, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %4, i32 0, i32 3
  %5 = load i32, ptr %orders, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr %ref.tmp) #17
  %side3 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 0
  %8 = load i8, ptr %side.addr, align 1
  store i8 %8, ptr %side3, align 8
  %price = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 2
  %9 = load i64, ptr %price_index.addr, align 8
  %call4 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %1, i64 noundef %9) #17
  store i64 %call4, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 3
  %10 = load ptr, ptr %level, align 8
  %quantity5 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %10, i32 0, i32 2
  %11 = load i64, ptr %quantity5, align 8
  store i64 %11, ptr %quantity, align 8
  %orders6 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 4
  %12 = load ptr, ptr %level, align 8
  %orders7 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %12, i32 0, i32 3
  %13 = load i32, ptr %orders7, align 8
  store i32 %13, ptr %orders6, align 8
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %levels, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp)
  call void @llvm.lifetime.end.p0(i64 32, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #17
  %14 = load ptr, ptr %level, align 8
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %14, i32 0, i32 0
  %15 = load i32, ptr %head, align 8
  store i32 %15, ptr %slot, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, ptr %slot, align 4
  %cmp = icmp ne i32 %16, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %order) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %1, i32 0, i32 3
  %17 = load i32, ptr %slot, align 4
  %call8 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %17) #17
  store ptr %call8, ptr %order, align 8
  %18 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %orders9 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %19, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 32, ptr %ref.tmp10) #17
  %id = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 0
  %20 = load ptr, ptr %order, align 8
  %id11 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %20, i32 0, i32 0
  %21 = load i64, ptr %id11, align 8
  store i64 %21, ptr %id, align 8
  %side12 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 1
  %22 = load ptr, ptr %order, align 8
  %side13 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %22, i32 0, i32 3
  %23 = load i8, ptr %side13, align 4
  store i8 %23, ptr %side12, align 8
  %price14 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 3
  %24 = load ptr, ptr %order, align 8
  %price15 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %24, i32 0, i32 1
  %25 = load i64, ptr %price15, align 8
  store i64 %25, ptr %price14, align 8
  %quantity16 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 4
  %26 = load ptr, ptr %order, align 8
  %quantity17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %26, i32 0, i32 2
  %27 = load i32, ptr %quantity17, align 8
  store i32 %27, ptr %quantity16, align 8
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %orders9, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10)
  call void @llvm.lifetime.end.p0(i64 32, ptr %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %order) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %pool_18 = getelementptr inbounds %"class.ledger::FastBook", ptr %1, i32 0, i32 3
  %28 = load i32, ptr %slot, align 4
  %call19 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_18, i32 noundef %28) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call19, i32 0, i32 6
  %29 = load i32, ptr %next, align 4
  store i32 %29, ptr %slot, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond.cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this1, i32 0, i32 1
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %levels) #17
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this1, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %orders) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %seen = alloca %"class.std::vector.25", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp10 = alloca %"class.std::allocator.26", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %order_count = alloca i64, align 8
  %total_quantity = alloca i64, align 8
  %__range1 = alloca ptr, align 8
  %ref.tmp11 = alloca %"class.std::initializer_list", align 8
  %ref.tmp12 = alloca [2 x i8], align 1
  %__begin1 = alloca ptr, align 8
  %__end1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %side = alloca i8, align 1
  %side_levels = alloca ptr, align 8
  %bits = alloca ptr, align 8
  %i = alloca i64, align 8
  %level = alloca ptr, align 8
  %quantity = alloca i64, align 8
  %count = alloca i32, align 4
  %previous = alloca i32, align 4
  %slot = alloca i32, align 4
  %ref.tmp39 = alloca %"struct.std::_Bit_reference", align 8
  %order = alloca ptr, align 8
  %ref.tmp70 = alloca %"struct.std::_Bit_reference", align 8
  %__range1156 = alloca ptr, align 8
  %__begin1159 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end1161 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %entry168 = alloca ptr, align 8
  %ref.tmp178 = alloca %"struct.std::_Bit_reference", align 8
  %i210 = alloca i64, align 8
  %ref.tmp223 = alloca %"struct.std::_Bit_reference", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call = call noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNK6ledger6detail7IdIndex16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %index_) #17
  br i1 %call2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pool_4 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call5 = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_4) #17
  %index_6 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %call7 = call noundef i64 @_ZNK6ledger6detail7IdIndex4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %index_6) #17
  %cmp = icmp ne i64 %call5, %call7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.lifetime.start.p0(i64 40, ptr %seen) #17
  %pool_8 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %order_count) #17
  store i64 0, ptr %order_count, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_quantity) #17
  store i64 0, ptr %total_quantity, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__range1) #17
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
  store ptr %ref.tmp11, ptr %__range1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__begin1) #17
  %0 = load ptr, ptr %__range1, align 8
  %call13 = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  store ptr %call13, ptr %__begin1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__end1) #17
  %1 = load ptr, ptr %__range1, align 8
  %call14 = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE3endEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  store ptr %call14, ptr %__end1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %invoke.cont
  %2 = load ptr, ptr %__begin1, align 8
  %3 = load ptr, ptr %__end1, align 8
  %cmp15 = icmp ne ptr %2, %3
  br i1 %cmp15, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup144

lpad:                                             ; preds = %if.end
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup270

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %side) #17
  %7 = load ptr, ptr %__begin1, align 8
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %side, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_levels) #17
  %9 = load i8, ptr %side, align 1
  %call16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %9) #17
  store ptr %call16, ptr %side_levels, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #17
  %10 = load i8, ptr %side, align 1
  %call17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %10) #17
  store ptr %call17, ptr %bits, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc112, %for.body
  %11 = load i64, ptr %i, align 8
  %12 = load ptr, ptr %side_levels, align 8
  %call19 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  %cmp20 = icmp ult i64 %11, %call19
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond18
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup114

for.body22:                                       ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %level) #17
  %13 = load ptr, ptr %side_levels, align 8
  %14 = load i64, ptr %i, align 8
  %call23 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %14) #17
  store ptr %call23, ptr %level, align 8
  %15 = load ptr, ptr %level, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %15, i32 0, i32 3
  %16 = load i32, ptr %orders, align 8
  %cmp24 = icmp ne i32 %16, 0
  %conv = zext i1 %cmp24 to i32
  %17 = load ptr, ptr %bits, align 8
  %18 = load i64, ptr %i, align 8
  %div = udiv i64 %18, 64
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %div) #17
  %19 = load i64, ptr %call25, align 8
  %20 = load i64, ptr %i, align 8
  %rem = urem i64 %20, 64
  %shl = shl i64 1, %rem
  %and = and i64 %19, %shl
  %cmp26 = icmp ne i64 %and, 0
  %conv27 = zext i1 %cmp26 to i32
  %cmp28 = icmp ne i32 %conv, %conv27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body22
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup108

if.end30:                                         ; preds = %for.body22
  call void @llvm.lifetime.start.p0(i64 8, ptr %quantity) #17
  store i64 0, ptr %quantity, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17
  store i32 0, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %previous) #17
  store i32 -1, ptr %previous, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #17
  %21 = load ptr, ptr %level, align 8
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %21, i32 0, i32 0
  %22 = load i32, ptr %head, align 8
  store i32 %22, ptr %slot, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.end30
  %23 = load i32, ptr %slot, align 4
  %cmp32 = icmp ne i32 %23, -1
  br i1 %cmp32, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond31
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

for.body34:                                       ; preds = %for.cond31
  %24 = load i32, ptr %slot, align 4
  %conv35 = zext i32 %24 to i64
  %pool_36 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call37 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_36) #17
  %cmp38 = icmp uge i64 %conv35, %call37
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp39) #17
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body34
  %25 = load i32, ptr %slot, align 4
  %conv40 = zext i32 %25 to i64
  %call43 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv40)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %lor.rhs
  %26 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp39, i32 0, i32 0
  %27 = extractvalue { ptr, i64 } %call43, 0
  store ptr %27, ptr %26, align 8
  %28 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp39, i32 0, i32 1
  %29 = extractvalue { ptr, i64 } %call43, 1
  store i64 %29, ptr %28, align 8
  %call44 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp39) #17
  br label %lor.end

lor.end:                                          ; preds = %invoke.cont42, %for.body34
  %30 = phi i1 [ true, %for.body34 ], [ %call44, %invoke.cont42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp39) #17
  br i1 %30, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

lpad41:                                           ; preds = %lor.rhs
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = extractvalue { ptr, i32 } %31, 0
  store ptr %32, ptr %exn.slot, align 8
  %33 = extractvalue { ptr, i32 } %31, 1
  store i32 %33, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp39) #17
  br label %ehcleanup

if.end46:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %order) #17
  %pool_47 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %34 = load i32, ptr %slot, align 4
  %call48 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_47, i32 noundef %34) #17
  store ptr %call48, ptr %order, align 8
  %35 = load ptr, ptr %order, align 8
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %35, i32 0, i32 7
  %36 = load i8, ptr %live, align 8, !range !5, !noundef !6
  %tobool = trunc i8 %36 to i1
  br i1 %tobool, label %lor.lhs.false49, label %if.then68

lor.lhs.false49:                                  ; preds = %if.end46
  %37 = load ptr, ptr %order, align 8
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %37, i32 0, i32 0
  %38 = load i64, ptr %id, align 8
  %tobool50 = icmp ne i64 %38, 0
  br i1 %tobool50, label %lor.lhs.false51, label %if.then68

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %39 = load ptr, ptr %order, align 8
  %quantity52 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %39, i32 0, i32 2
  %40 = load i32, ptr %quantity52, align 8
  %tobool53 = icmp ne i32 %40, 0
  br i1 %tobool53, label %lor.lhs.false54, label %if.then68

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %41 = load ptr, ptr %order, align 8
  %side55 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %41, i32 0, i32 3
  %42 = load i8, ptr %side55, align 4
  %43 = load i8, ptr %side, align 1
  %cmp56 = icmp ne i8 %42, %43
  br i1 %cmp56, label %if.then68, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %44 = load ptr, ptr %order, align 8
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %44, i32 0, i32 1
  %45 = load i64, ptr %price, align 8
  %46 = load i64, ptr %i, align 8
  %call58 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this1, i64 noundef %46) #17
  %cmp59 = icmp ne i64 %45, %call58
  br i1 %cmp59, label %if.then68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %47 = load ptr, ptr %order, align 8
  %previous61 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %47, i32 0, i32 5
  %48 = load i32, ptr %previous61, align 8
  %49 = load i32, ptr %previous, align 4
  %cmp62 = icmp ne i32 %48, %49
  br i1 %cmp62, label %if.then68, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %index_64 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %50 = load ptr, ptr %order, align 8
  %id65 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %50, i32 0, i32 0
  %51 = load i64, ptr %id65, align 8
  %call66 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %index_64, i64 noundef %51) #17
  %52 = load i32, ptr %slot, align 4
  %cmp67 = icmp ne i32 %call66, %52
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false63, %lor.lhs.false60, %lor.lhs.false57, %lor.lhs.false54, %lor.lhs.false51, %lor.lhs.false49, %if.end46
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false63
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp70) #17
  %53 = load i32, ptr %slot, align 4
  %conv71 = zext i32 %53 to i64
  %call74 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv71)
          to label %invoke.cont73 unwind label %lpad72

invoke.cont73:                                    ; preds = %if.end69
  %54 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp70, i32 0, i32 0
  %55 = extractvalue { ptr, i64 } %call74, 0
  store ptr %55, ptr %54, align 8
  %56 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp70, i32 0, i32 1
  %57 = extractvalue { ptr, i64 } %call74, 1
  store i64 %57, ptr %56, align 8
  %call75 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp70, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp70) #17
  %58 = load i32, ptr %slot, align 4
  store i32 %58, ptr %previous, align 4
  %59 = load ptr, ptr %order, align 8
  %quantity76 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %59, i32 0, i32 2
  %60 = load i32, ptr %quantity76, align 8
  %conv77 = zext i32 %60 to i64
  %61 = load i64, ptr %quantity, align 8
  %add = add i64 %61, %conv77
  store i64 %add, ptr %quantity, align 8
  %62 = load i32, ptr %count, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %count, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont73, %if.then68
  call void @llvm.lifetime.end.p0(i64 8, ptr %order) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %pool_78 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %63 = load i32, ptr %slot, align 4
  %call79 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_78, i32 noundef %63) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call79, i32 0, i32 6
  %64 = load i32, ptr %next, align 4
  store i32 %64, ptr %slot, align 4
  br label %for.cond31, !llvm.loop !25

lpad72:                                           ; preds = %if.end69
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = extractvalue { ptr, i32 } %65, 0
  store ptr %66, ptr %exn.slot, align 8
  %67 = extractvalue { ptr, i32 } %65, 1
  store i32 %67, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp70) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %order) #17
  br label %ehcleanup

cleanup80:                                        ; preds = %cleanup, %if.then45, %for.cond.cleanup33
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  %cleanup.dest81 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest81, label %cleanup102 [
    i32 7, label %for.end
  ]

ehcleanup:                                        ; preds = %lpad72, %lpad41
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %quantity) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_levels) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %side) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr %ref.tmp12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__range1) #17
  br label %ehcleanup264

for.end:                                          ; preds = %cleanup80
  %68 = load i32, ptr %count, align 4
  %69 = load ptr, ptr %level, align 8
  %orders82 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %69, i32 0, i32 3
  %70 = load i32, ptr %orders82, align 8
  %cmp83 = icmp ne i32 %68, %70
  br i1 %cmp83, label %if.then89, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %for.end
  %71 = load i64, ptr %quantity, align 8
  %72 = load ptr, ptr %level, align 8
  %quantity85 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %72, i32 0, i32 2
  %73 = load i64, ptr %quantity85, align 8
  %cmp86 = icmp ne i64 %71, %73
  br i1 %cmp86, label %if.then89, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %74 = load i32, ptr %previous, align 4
  %75 = load ptr, ptr %level, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %75, i32 0, i32 1
  %76 = load i32, ptr %tail, align 4
  %cmp88 = icmp ne i32 %74, %76
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %lor.lhs.false87, %lor.lhs.false84, %for.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup102

if.end90:                                         ; preds = %lor.lhs.false87
  %77 = load i32, ptr %count, align 4
  %tobool91 = icmp ne i32 %77, 0
  br i1 %tobool91, label %if.end98, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end90
  %78 = load ptr, ptr %level, align 8
  %head92 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %78, i32 0, i32 0
  %79 = load i32, ptr %head92, align 8
  %cmp93 = icmp ne i32 %79, -1
  br i1 %cmp93, label %if.then97, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true
  %80 = load ptr, ptr %level, align 8
  %tail95 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %80, i32 0, i32 1
  %81 = load i32, ptr %tail95, align 4
  %cmp96 = icmp ne i32 %81, -1
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %lor.lhs.false94, %land.lhs.true
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup102

if.end98:                                         ; preds = %lor.lhs.false94, %if.end90
  %82 = load i64, ptr %quantity, align 8
  %83 = load i64, ptr %total_quantity, align 8
  %add99 = add i64 %83, %82
  store i64 %add99, ptr %total_quantity, align 8
  %84 = load i32, ptr %count, align 4
  %conv100 = zext i32 %84 to i64
  %85 = load i64, ptr %order_count, align 8
  %add101 = add i64 %85, %conv100
  store i64 %add101, ptr %order_count, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup102

cleanup102:                                       ; preds = %if.end98, %if.then97, %if.then89, %cleanup80
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %quantity) #17
  br label %cleanup108

cleanup108:                                       ; preds = %cleanup102, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %level) #17
  %cleanup.dest109 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest109, label %cleanup114 [
    i32 0, label %cleanup.cont110
  ]

cleanup.cont110:                                  ; preds = %cleanup108
  br label %for.inc112

for.inc112:                                       ; preds = %cleanup.cont110
  %86 = load i64, ptr %i, align 8
  %inc113 = add i64 %86, 1
  store i64 %inc113, ptr %i, align 8
  br label %for.cond18, !llvm.loop !26

cleanup114:                                       ; preds = %cleanup108, %for.cond.cleanup21
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest115 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest115, label %cleanup133 [
    i32 4, label %for.end117
  ]

for.end117:                                       ; preds = %cleanup114
  %87 = load ptr, ptr %side_levels, align 8
  %call118 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #17
  %rem119 = urem i64 %call118, 64
  %tobool120 = icmp ne i64 %rem119, 0
  br i1 %tobool120, label %land.lhs.true121, label %if.end127

land.lhs.true121:                                 ; preds = %for.end117
  %88 = load ptr, ptr %bits, align 8
  %call122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %88) #17
  %89 = load i64, ptr %call122, align 8
  %90 = load ptr, ptr %side_levels, align 8
  %call123 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %90) #17
  %rem124 = urem i64 %call123, 64
  %shr = lshr i64 %89, %rem124
  %cmp125 = icmp ne i64 %shr, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %land.lhs.true121
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

if.end127:                                        ; preds = %land.lhs.true121, %for.end117
  %91 = load i8, ptr %side, align 1
  %call128 = call noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %91) #17
  %92 = load i8, ptr %side, align 1
  %call129 = call noundef i64 @_ZNK6ledger8FastBook9find_bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this1, i8 noundef zeroext %92) #17
  %cmp130 = icmp ne i64 %call128, %call129
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end127
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

if.end132:                                        ; preds = %if.end127
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %if.end132, %if.then131, %if.then126, %cleanup114
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_levels) #17
  %cleanup.dest136 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest136, label %cleanup139 [
    i32 0, label %cleanup.cont137
  ]

cleanup.cont137:                                  ; preds = %cleanup133
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %cleanup.cont137, %cleanup133
  call void @llvm.lifetime.end.p0(i64 1, ptr %side) #17
  %cleanup.dest140 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest140, label %cleanup144 [
    i32 0, label %cleanup.cont141
  ]

cleanup.cont141:                                  ; preds = %cleanup139
  br label %for.inc143

for.inc143:                                       ; preds = %cleanup.cont141
  %93 = load ptr, ptr %__begin1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr, ptr %__begin1, align 8
  br label %for.cond, !llvm.loop !27

cleanup144:                                       ; preds = %cleanup139, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr %ref.tmp12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__range1) #17
  %cleanup.dest153 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest153, label %cleanup263 [
    i32 2, label %for.end155
  ]

for.end155:                                       ; preds = %cleanup144
  call void @llvm.lifetime.start.p0(i64 8, ptr %__range1156) #17
  %index_157 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 4
  %call158 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger6detail7IdIndex7entriesEv(ptr noundef nonnull align 8 dereferenceable(40) %index_157) #17
  store ptr %call158, ptr %__range1156, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__begin1159) #17
  %94 = load ptr, ptr %__range1156, align 8
  %call160 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %94) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__begin1159, i32 0, i32 0
  store ptr %call160, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__end1161) #17
  %95 = load ptr, ptr %__range1156, align 8
  %call162 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %95) #17
  %coerce.dive163 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__end1161, i32 0, i32 0
  store ptr %call162, ptr %coerce.dive163, align 8
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc200, %for.end155
  %call165 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159, ptr noundef nonnull align 8 dereferenceable(8) %__end1161) #17
  %lnot = xor i1 %call165, true
  br i1 %lnot, label %for.body167, label %for.cond.cleanup166

for.cond.cleanup166:                              ; preds = %for.cond164
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup202

for.body167:                                      ; preds = %for.cond164
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry168) #17
  %call169 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159) #17
  store ptr %call169, ptr %entry168, align 8
  %96 = load ptr, ptr %entry168, align 8
  %id170 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %96, i32 0, i32 0
  %97 = load i64, ptr %id170, align 8
  %tobool171 = icmp ne i64 %97, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp178) #17
  br i1 %tobool171, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body167
  %98 = load ptr, ptr %entry168, align 8
  %slot172 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %98, i32 0, i32 1
  %99 = load i32, ptr %slot172, align 8
  %conv173 = zext i32 %99 to i64
  %pool_174 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call175 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_174) #17
  %cmp176 = icmp uge i64 %conv173, %call175
  br i1 %cmp176, label %lor.end192, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %land.rhs
  %100 = load ptr, ptr %entry168, align 8
  %slot179 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %100, i32 0, i32 1
  %101 = load i32, ptr %slot179, align 8
  %conv180 = zext i32 %101 to i64
  %call183 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv180)
          to label %invoke.cont182 unwind label %lpad181

invoke.cont182:                                   ; preds = %lor.lhs.false177
  %102 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp178, i32 0, i32 0
  %103 = extractvalue { ptr, i64 } %call183, 0
  store ptr %103, ptr %102, align 8
  %104 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp178, i32 0, i32 1
  %105 = extractvalue { ptr, i64 } %call183, 1
  store i64 %105, ptr %104, align 8
  %call184 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp178) #17
  br i1 %call184, label %lor.rhs185, label %lor.end192

lor.rhs185:                                       ; preds = %invoke.cont182
  %pool_186 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %106 = load ptr, ptr %entry168, align 8
  %slot187 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %106, i32 0, i32 1
  %107 = load i32, ptr %slot187, align 8
  %call188 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_186, i32 noundef %107) #17
  %id189 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call188, i32 0, i32 0
  %108 = load i64, ptr %id189, align 8
  %109 = load ptr, ptr %entry168, align 8
  %id190 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %109, i32 0, i32 0
  %110 = load i64, ptr %id190, align 8
  %cmp191 = icmp ne i64 %108, %110
  br label %lor.end192

lor.end192:                                       ; preds = %lor.rhs185, %invoke.cont182, %land.rhs
  %111 = phi i1 [ true, %invoke.cont182 ], [ true, %land.rhs ], [ %cmp191, %lor.rhs185 ]
  br label %land.end

land.end:                                         ; preds = %lor.end192, %for.body167
  %112 = phi i1 [ false, %for.body167 ], [ %111, %lor.end192 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp178) #17
  br i1 %112, label %if.then194, label %if.end195

if.then194:                                       ; preds = %land.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup196

lpad181:                                          ; preds = %lor.lhs.false177
  %113 = landingpad { ptr, i32 }
          cleanup
  %114 = extractvalue { ptr, i32 } %113, 0
  store ptr %114, ptr %exn.slot, align 8
  %115 = extractvalue { ptr, i32 } %113, 1
  store i32 %115, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp178) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry168) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1161) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1159) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__range1156) #17
  br label %ehcleanup264

if.end195:                                        ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup196

cleanup196:                                       ; preds = %if.end195, %if.then194
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry168) #17
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %cleanup202 [
    i32 0, label %cleanup.cont198
  ]

cleanup.cont198:                                  ; preds = %cleanup196
  br label %for.inc200

for.inc200:                                       ; preds = %cleanup.cont198
  %call201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159) #17
  br label %for.cond164, !llvm.loop !28

cleanup202:                                       ; preds = %cleanup196, %for.cond.cleanup166
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1161) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1159) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__range1156) #17
  %cleanup.dest207 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest207, label %cleanup263 [
    i32 10, label %for.end209
  ]

for.end209:                                       ; preds = %cleanup202
  call void @llvm.lifetime.start.p0(i64 8, ptr %i210) #17
  store i64 0, ptr %i210, align 8
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc233, %for.end209
  %116 = load i64, ptr %i210, align 8
  %pool_212 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call213 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_212) #17
  %cmp214 = icmp ult i64 %116, %call213
  br i1 %cmp214, label %for.body216, label %for.cond.cleanup215

for.cond.cleanup215:                              ; preds = %for.cond211
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup235

for.body216:                                      ; preds = %for.cond211
  %pool_217 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %117 = load i64, ptr %i210, align 8
  %conv218 = trunc i64 %117 to i32
  %call219 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_217, i32 noundef %conv218) #17
  %live220 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call219, i32 0, i32 7
  %118 = load i8, ptr %live220, align 8, !range !5, !noundef !6
  %tobool221 = trunc i8 %118 to i1
  %conv222 = zext i1 %tobool221 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp223) #17
  %119 = load i64, ptr %i210, align 8
  %call226 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %119)
          to label %invoke.cont225 unwind label %lpad224

invoke.cont225:                                   ; preds = %for.body216
  %120 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp223, i32 0, i32 0
  %121 = extractvalue { ptr, i64 } %call226, 0
  store ptr %121, ptr %120, align 8
  %122 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp223, i32 0, i32 1
  %123 = extractvalue { ptr, i64 } %call226, 1
  store i64 %123, ptr %122, align 8
  %call227 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp223) #17
  %conv228 = zext i1 %call227 to i32
  %cmp229 = icmp ne i32 %conv222, %conv228
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp223) #17
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %invoke.cont225
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup235

lpad224:                                          ; preds = %for.body216
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = extractvalue { ptr, i32 } %124, 0
  store ptr %125, ptr %exn.slot, align 8
  %126 = extractvalue { ptr, i32 } %124, 1
  store i32 %126, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp223) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %i210) #17
  br label %ehcleanup264

if.end232:                                        ; preds = %invoke.cont225
  br label %for.inc233

for.inc233:                                       ; preds = %if.end232
  %127 = load i64, ptr %i210, align 8
  %inc234 = add i64 %127, 1
  store i64 %inc234, ptr %i210, align 8
  br label %for.cond211, !llvm.loop !29

cleanup235:                                       ; preds = %if.then231, %for.cond.cleanup215
  call void @llvm.lifetime.end.p0(i64 8, ptr %i210) #17
  %cleanup.dest236 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest236, label %cleanup263 [
    i32 12, label %for.end238
  ]

for.end238:                                       ; preds = %cleanup235
  %128 = load i64, ptr %order_count, align 8
  %pool_239 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 3
  %call240 = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_239) #17
  %cmp241 = icmp ne i64 %128, %call240
  br i1 %cmp241, label %if.then244, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %for.end238
  %129 = load i64, ptr %total_quantity, align 8
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 11
  %130 = load i64, ptr %resting_quantity_, align 8
  %cmp243 = icmp ne i64 %129, %130
  br i1 %cmp243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %lor.lhs.false242, %for.end238
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup263

if.end245:                                        ; preds = %lor.lhs.false242
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  %131 = load i64, ptr %best_bid_, align 8
  %cmp246 = icmp ne i64 %131, -1
  br i1 %cmp246, label %land.lhs.true247, label %if.end254

land.lhs.true247:                                 ; preds = %if.end245
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  %132 = load i64, ptr %best_ask_, align 8
  %cmp248 = icmp ne i64 %132, -1
  br i1 %cmp248, label %land.lhs.true249, label %if.end254

land.lhs.true249:                                 ; preds = %land.lhs.true247
  %best_bid_250 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 9
  %133 = load i64, ptr %best_bid_250, align 8
  %best_ask_251 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 10
  %134 = load i64, ptr %best_ask_251, align 8
  %cmp252 = icmp uge i64 %133, %134
  br i1 %cmp252, label %if.then253, label %if.end254

if.then253:                                       ; preds = %land.lhs.true249
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup263

if.end254:                                        ; preds = %land.lhs.true249, %land.lhs.true247, %if.end245
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 0
  %135 = load i64, ptr %submitted, align 8
  %statistics_255 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_255, i32 0, i32 1
  %136 = load i64, ptr %executed, align 8
  %mul = mul i64 2, %136
  %statistics_256 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_256, i32 0, i32 2
  %137 = load i64, ptr %cancelled, align 8
  %add257 = add i64 %mul, %137
  %statistics_258 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 12
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_258, i32 0, i32 3
  %138 = load i64, ptr %expired, align 8
  %add259 = add i64 %add257, %138
  %resting_quantity_260 = getelementptr inbounds %"class.ledger::FastBook", ptr %this1, i32 0, i32 11
  %139 = load i64, ptr %resting_quantity_260, align 8
  %add261 = add i64 %add259, %139
  %cmp262 = icmp eq i64 %135, %add261
  store i1 %cmp262, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup263

cleanup263:                                       ; preds = %if.end254, %if.then253, %if.then244, %cleanup235, %cleanup202, %cleanup144
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_quantity) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %order_count) #17
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %seen) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %seen) #17
  br label %return

ehcleanup264:                                     ; preds = %lpad224, %lpad181, %ehcleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_quantity) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %order_count) #17
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %seen) #17
  br label %ehcleanup270

ehcleanup270:                                     ; preds = %ehcleanup264, %lpad
  call void @llvm.lifetime.end.p0(i64 40, ptr %seen) #17
  br label %eh.resume

return:                                           ; preds = %cleanup263, %if.then
  %140 = load i1, ptr %retval, align 1
  ret i1 %140

eh.resume:                                        ; preds = %ehcleanup270
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val271 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val271
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %free = alloca %"class.std::vector.25", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp2 = alloca %"class.std::allocator.26", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %free_count = alloca i64, align 8
  %slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp6 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp15 = alloca %"struct.std::_Bit_reference", align 8
  %live_count = alloca i64, align 8
  %i = alloca i64, align 8
  %ref.tmp35 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp44 = alloca %"struct.std::_Bit_reference", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %free) #17
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %free_count) #17
  store i64 0, ptr %free_count, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  store i32 %0, ptr %slot, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, ptr %slot, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup70

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %slot, align 4
  %conv = zext i32 %5 to i64
  %nodes_3 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_3) #17
  %cmp5 = icmp uge i64 %conv, %call4
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp6) #17
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, ptr %slot, align 4
  %conv7 = zext i32 %6 to i64
  %call10 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %conv7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %lor.lhs.false
  %7 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp6, i32 0, i32 0
  %8 = extractvalue { ptr, i64 } %call10, 0
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp6, i32 0, i32 1
  %10 = extractvalue { ptr, i64 } %call10, 1
  store i64 %10, ptr %9, align 8
  %call11 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp6) #17
  br i1 %call11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %invoke.cont9
  %nodes_12 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %11 = load i32, ptr %slot, align 4
  %conv13 = zext i32 %11 to i64
  %call14 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_12, i64 noundef %conv13) #17
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call14, i32 0, i32 7
  %12 = load i8, ptr %live, align 8, !range !5, !noundef !6
  %tobool = trunc i8 %12 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %invoke.cont9, %for.body
  %13 = phi i1 [ true, %invoke.cont9 ], [ true, %for.body ], [ %tobool, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp6) #17
  br i1 %13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad8:                                            ; preds = %lor.lhs.false
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  store ptr %15, ptr %exn.slot, align 8
  %16 = extractvalue { ptr, i32 } %14, 1
  store i32 %16, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp6) #17
  br label %ehcleanup

if.end:                                           ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp15) #17
  %17 = load i32, ptr %slot, align 4
  %conv16 = zext i32 %17 to i64
  %call19 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %conv16)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %if.end
  %18 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp15, i32 0, i32 0
  %19 = extractvalue { ptr, i64 } %call19, 0
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp15, i32 0, i32 1
  %21 = extractvalue { ptr, i64 } %call19, 1
  store i64 %21, ptr %20, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp15, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp15) #17
  %22 = load i64, ptr %free_count, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %free_count, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont18
  %nodes_21 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %23 = load i32, ptr %slot, align 4
  %conv22 = zext i32 %23 to i64
  %call23 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_21, i64 noundef %conv22) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call23, i32 0, i32 6
  %24 = load i32, ptr %next, align 4
  store i32 %24, ptr %slot, align 4
  br label %for.cond, !llvm.loop !30

lpad17:                                           ; preds = %if.end
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  store ptr %26, ptr %exn.slot, align 8
  %27 = extractvalue { ptr, i32 } %25, 1
  store i32 %27, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp15) #17
  br label %ehcleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup65 [
    i32 2, label %for.end
  ]

ehcleanup:                                        ; preds = %lpad17, %lpad8
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #17
  br label %ehcleanup66

for.end:                                          ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %live_count) #17
  store i64 0, ptr %live_count, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc53, %for.end
  %28 = load i64, ptr %i, align 8
  %nodes_25 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %call26 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_25) #17
  %cmp27 = icmp ult i64 %28, %call26
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond24
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

for.body29:                                       ; preds = %for.cond24
  %nodes_30 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %29 = load i64, ptr %i, align 8
  %call31 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_30, i64 noundef %29) #17
  %live32 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call31, i32 0, i32 7
  %30 = load i8, ptr %live32, align 8, !range !5, !noundef !6
  %tobool33 = trunc i8 %30 to i1
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp35) #17
  %31 = load i64, ptr %i, align 8
  %call38 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %31)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %if.then34
  %32 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp35, i32 0, i32 0
  %33 = extractvalue { ptr, i64 } %call38, 0
  store ptr %33, ptr %32, align 8
  %34 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp35, i32 0, i32 1
  %35 = extractvalue { ptr, i64 } %call38, 1
  store i64 %35, ptr %34, align 8
  %call39 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp35) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp35) #17
  br i1 %call39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %invoke.cont37
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

lpad36:                                           ; preds = %if.then34
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = extractvalue { ptr, i32 } %36, 0
  store ptr %37, ptr %exn.slot, align 8
  %38 = extractvalue { ptr, i32 } %36, 1
  store i32 %38, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp35) #17
  br label %ehcleanup57

if.end42:                                         ; preds = %invoke.cont37
  %39 = load i64, ptr %live_count, align 8
  %inc43 = add i64 %39, 1
  store i64 %inc43, ptr %live_count, align 8
  br label %if.end52

if.else:                                          ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp44) #17
  %40 = load i64, ptr %i, align 8
  %call47 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %40)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %if.else
  %41 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp44, i32 0, i32 0
  %42 = extractvalue { ptr, i64 } %call47, 0
  store ptr %42, ptr %41, align 8
  %43 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp44, i32 0, i32 1
  %44 = extractvalue { ptr, i64 } %call47, 1
  store i64 %44, ptr %43, align 8
  %call48 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp44) #17
  %lnot = xor i1 %call48, true
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp44) #17
  br i1 %lnot, label %if.then50, label %if.end51

if.then50:                                        ; preds = %invoke.cont46
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

lpad45:                                           ; preds = %if.else
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  store ptr %46, ptr %exn.slot, align 8
  %47 = extractvalue { ptr, i32 } %45, 1
  store i32 %47, ptr %ehselector.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp44) #17
  br label %ehcleanup57

if.end51:                                         ; preds = %invoke.cont46
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end42
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %48 = load i64, ptr %i, align 8
  %inc54 = add i64 %48, 1
  store i64 %inc54, ptr %i, align 8
  br label %for.cond24, !llvm.loop !31

cleanup55:                                        ; preds = %if.then50, %if.then41, %for.cond.cleanup28
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest56 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest56, label %cleanup63 [
    i32 5, label %for.end58
  ]

ehcleanup57:                                      ; preds = %lpad45, %lpad36
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %live_count) #17
  br label %ehcleanup66

for.end58:                                        ; preds = %cleanup55
  %49 = load i64, ptr %live_count, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 2
  %50 = load i64, ptr %size_, align 8
  %cmp59 = icmp eq i64 %49, %50
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end58
  %51 = load i64, ptr %live_count, align 8
  %52 = load i64, ptr %free_count, align 8
  %add = add i64 %51, %52
  %nodes_60 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %call61 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_60) #17
  %cmp62 = icmp eq i64 %add, %call61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end58
  %53 = phi i1 [ false, %for.end58 ], [ %cmp62, %land.rhs ]
  store i1 %53, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %land.end, %cleanup55
  call void @llvm.lifetime.end.p0(i64 8, ptr %live_count) #17
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup63, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %free_count) #17
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %free) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %free) #17
  %54 = load i1, ptr %retval, align 1
  ret i1 %54

ehcleanup66:                                      ; preds = %ehcleanup57, %ehcleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %free_count) #17
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %free) #17
  br label %ehcleanup70

ehcleanup70:                                      ; preds = %ehcleanup66, %lpad
  call void @llvm.lifetime.end.p0(i64 40, ptr %free) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup70
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val71 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val71
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail7IdIndex16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %occupied = alloca i64, align 8
  %__range2 = alloca ptr, align 8
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %cleanup.dest.slot = alloca i32, align 4
  %entry5 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %occupied) #17
  store i64 0, ptr %occupied, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__range2) #17
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  store ptr %entries_, ptr %__range2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__begin2) #17
  %0 = load ptr, ptr %__range2, align 8
  %call = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__begin2, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__end2) #17
  %1 = load ptr, ptr %__range2, align 8
  %call2 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__end2, i32 0, i32 0
  store ptr %call2, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call4 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__begin2, ptr noundef nonnull align 8 dereferenceable(8) %__end2) #17
  %lnot = xor i1 %call4, true
  br i1 %lnot, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup18

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry5) #17
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin2) #17
  store ptr %call6, ptr %entry5, align 8
  %2 = load ptr, ptr %entry5, align 8
  %id = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %2, i32 0, i32 0
  %3 = load i64, ptr %id, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %entry5, align 8
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %4, i32 0, i32 1
  %5 = load i32, ptr %slot, align 8
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %entry5, align 8
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %6, i32 0, i32 0
  %7 = load i64, ptr %id7, align 8
  %call8 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %7) #17
  %8 = load ptr, ptr %entry5, align 8
  %slot9 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %8, i32 0, i32 1
  %9 = load i32, ptr %slot9, align 8
  %cmp10 = icmp ne i32 %call8, %9
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %lor.lhs.false, %if.then
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, ptr %occupied, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %occupied, align 8
  br label %if.end16

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %entry5, align 8
  %slot12 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %11, i32 0, i32 1
  %12 = load i32, ptr %slot12, align 8
  %cmp13 = icmp ne i32 %12, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry5) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin2) #17
  br label %for.cond, !llvm.loop !32

cleanup18:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__range2) #17
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %cleanup26 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup18
  %13 = load i64, ptr %occupied, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 2
  %14 = load i64, ptr %size_, align 8
  %cmp22 = icmp eq i64 %13, %14
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %15 = load i64, ptr %occupied, align 8
  %entries_23 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  %call24 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_23) #17
  %div = udiv i64 %call24, 2
  %cmp25 = icmp ule i64 %15, %div
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %16 = phi i1 [ false, %for.end ], [ %cmp25, %land.rhs ]
  store i1 %16, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %land.end, %cleanup18
  call void @llvm.lifetime.end.p0(i64 8, ptr %occupied) #17
  %17 = load i1, ptr %retval, align 1
  ret i1 %17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail7IdIndex4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %size_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_) #17
  ret i64 %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__value, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = load ptr, ptr %__value.addr, align 8
  %3 = load i8, ptr %2, align 1, !range !5, !noundef !6
  %tobool = trunc i8 %3 to i1
  call void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %this1, i1 noundef zeroext %tobool) #17
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_array = getelementptr inbounds %"class.std::initializer_list", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_array, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE3endEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %this1) #17
  %call2 = call noundef i64 @_ZNKSt16initializer_listIN6ledger4SideEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %this1) #17
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call2
  ret ptr %add.ptr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %call = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %this1) #17
  %0 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %1 = extractvalue { ptr, i32 } %call, 0
  store ptr %1, ptr %0, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %3 = extractvalue { ptr, i32 } %call, 1
  store i32 %3, ptr %2, align 8
  %4 = load i64, ptr %__n.addr, align 8
  %call2 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %ref.tmp, i64 noundef %4)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 0
  %6 = extractvalue { ptr, i64 } %call2, 0
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 1
  %8 = extractvalue { ptr, i64 } %call2, 1
  store i64 %8, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %9 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %1 = load i64, ptr %0, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 1
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
  %this.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %slot.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %this, i1 noundef zeroext %__x) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__x to i8
  store i8 %frombool, ptr %__x.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__x.addr, align 1, !range !5, !noundef !6
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %_M_mask, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %_M_p, align 8
  %3 = load i64, ptr %2, align 8
  %or = or i64 %3, %1
  store i64 %or, ptr %2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %_M_mask2 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %_M_mask2, align 8
  %not = xor i64 %4, -1
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %_M_p3, align 8
  %6 = load i64, ptr %5, align 8
  %and = and i64 %6, %not
  store i64 %and, ptr %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNKSt6vectorImSaImEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 0
  ret ptr %entries_
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #6 comdat {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %1 = load ptr, ptr %call, align 8
  %2 = load ptr, ptr %__rhs.addr, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %3 = load ptr, ptr %call1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %_M_current, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS8_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS8_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 384307168202282325, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat {
entry:
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %__a.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger8FastBook5LevelES2_EvT_S4_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  invoke void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger8FastBook5LevelEEEvT_S6_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger8FastBook5LevelEEEvT_S6_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaIN6ledger8FastBook5LevelEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %2 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %3 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::allocator.2", align 1
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  %1 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %1 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail9OrderPool4NodeEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
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
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 230584300921369395, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #13

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 461168601842738790
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %1, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %2 = load ptr, ptr %_M_start6, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaIN6ledger6detail9OrderPool4NodeEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger6detail9OrderPool4NodeEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 461168601842738790
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 40
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
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
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail9OrderPool4NodeEmET_S5_T0_(ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail9OrderPool4NodeEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %__can_fill) #17
  store i8 1, ptr %__can_fill, align 1
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail9OrderPool4NodeEmEET_S7_T0_(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__can_fill) #17
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail9OrderPool4NodeEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__cur = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cur) #17
  %0 = load ptr, ptr %__first.addr, align 8
  store ptr %0, ptr %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt10_ConstructIN6ledger6detail9OrderPool4NodeEJEEvPT_DpOT0_(ptr noundef %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %3 = load i64, ptr %__n.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %__n.addr, align 8
  %4 = load ptr, ptr %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__cur, align 8
  br label %for.cond, !llvm.loop !33

lpad:                                             ; preds = %for.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %8 = call ptr @__cxa_begin_catch(ptr %exn) #17
  %9 = load ptr, ptr %__first.addr, align 8
  %10 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %9, ptr noundef %10)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %__cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  ret ptr %11

lpad1:                                            ; preds = %invoke.cont2, %catch
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  store ptr %13, ptr %exn.slot, align 8
  %14 = extractvalue { ptr, i32 } %12, 1
  store i32 %14, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn4, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger6detail9OrderPool4NodeEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false)
  call void @_ZN6ledger6detail9OrderPool4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail9OrderPool4NodeEEEvT_S7_(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPool4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 1
  store i64 0, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 2
  store i32 0, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 3
  store i8 0, ptr %side, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 5
  store i32 -1, ptr %previous, align 8
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 6
  store i32 -1, ptr %next, align 4
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this1, i32 0, i32 7
  store i8 0, ptr %live, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail9OrderPool4NodeEEEvT_S7_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN6ledger6detail7IdIndex14table_capacityEj(i32 noundef %orders) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %orders.addr = alloca i32, align 4
  %needed = alloca i64, align 8
  %capacity = alloca i64, align 8
  %ref.tmp = alloca %"class.std::vector.5", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %orders, ptr %orders.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %needed) #17
  %0 = load i32, ptr %orders.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, ptr %needed, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #17
  store i64 2, ptr %capacity, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %capacity, align 8
  %2 = load i64, ptr %needed, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %capacity, align 8
  %shl = shl i64 %3, 1
  store i64 %shl, ptr %capacity, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %4 = load i64, ptr %capacity, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %ref.tmp) #17
  call void @llvm.memset.p0.i64(ptr align 8 %ref.tmp, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %cmp1 = icmp ugt i64 %4, %call
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
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %needed) #17
  br label %eh.resume

if.end:                                           ; preds = %while.end
  %8 = load i64, ptr %capacity, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %needed) #17
  ret i64 %8

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %2 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %3 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS9_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS9_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 576460752303423487, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryES3_EvT_S5_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail7IdIndex5EntryEEEvT_S7_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail7IdIndex5EntryEEEvT_S7_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::allocator.7", align 1
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  %1 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %1 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail7IdIndex5EntryEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %1, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %2 = load ptr, ptr %_M_start6, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaIN6ledger6detail7IdIndex5EntryEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger6detail7IdIndex5EntryEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 1152921504606846975
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 16
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 576460752303423487
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail7IdIndex5EntryEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail7IdIndex5EntryEmET_S5_T0_(ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail7IdIndex5EntryEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %__can_fill) #17
  store i8 1, ptr %__can_fill, align 1
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail7IdIndex5EntryEmEET_S7_T0_(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__can_fill) #17
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail7IdIndex5EntryEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__cur = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cur) #17
  %0 = load ptr, ptr %__first.addr, align 8
  store ptr %0, ptr %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt10_ConstructIN6ledger6detail7IdIndex5EntryEJEEvPT_DpOT0_(ptr noundef %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %3 = load i64, ptr %__n.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %__n.addr, align 8
  %4 = load ptr, ptr %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__cur, align 8
  br label %for.cond, !llvm.loop !35

lpad:                                             ; preds = %for.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %8 = call ptr @__cxa_begin_catch(ptr %exn) #17
  %9 = load ptr, ptr %__first.addr, align 8
  %10 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_(ptr noundef %9, ptr noundef %10)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %__cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  ret ptr %11

lpad1:                                            ; preds = %invoke.cont2, %catch
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  store ptr %13, ptr %exn.slot, align 8
  %14 = extractvalue { ptr, i32 } %12, 1
  store i32 %14, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn4, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger6detail7IdIndex5EntryEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  call void @_ZN6ledger6detail7IdIndex5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndex5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %id = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %this1, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %this1, i32 0, i32 1
  store i32 -1, ptr %slot, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  %1 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %1 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger8FastBook5LevelEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %1, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %2 = load ptr, ptr %_M_start6, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaIN6ledger8FastBook5LevelEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger8FastBook5LevelEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger8FastBook5LevelEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 768614336404564650
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 24
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger8FastBook5LevelEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 384307168202282325
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger8FastBook5LevelEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger8FastBook5LevelEmET_S4_T0_(ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger8FastBook5LevelEmET_S4_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %__can_fill) #17
  store i8 1, ptr %__can_fill, align 1
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger8FastBook5LevelEmEET_S6_T0_(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__can_fill) #17
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger8FastBook5LevelEmEET_S6_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__cur = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cur) #17
  %0 = load ptr, ptr %__first.addr, align 8
  store ptr %0, ptr %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt10_ConstructIN6ledger8FastBook5LevelEJEEvPT_DpOT0_(ptr noundef %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %3 = load i64, ptr %__n.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %__n.addr, align 8
  %4 = load ptr, ptr %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__cur, align 8
  br label %for.cond, !llvm.loop !36

lpad:                                             ; preds = %for.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %8 = call ptr @__cxa_begin_catch(ptr %exn) #17
  %9 = load ptr, ptr %__first.addr, align 8
  %10 = load ptr, ptr %__cur, align 8
  invoke void @_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_(ptr noundef %9, ptr noundef %10)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %__cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  ret ptr %11

lpad1:                                            ; preds = %invoke.cont2, %catch
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  store ptr %13, ptr %exn.slot, align 8
  %14 = extractvalue { ptr, i32 } %12, 1
  store i32 %14, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn4, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger8FastBook5LevelEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 24, i1 false)
  call void @_ZN6ledger8FastBook5LevelC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8FastBook5LevelC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %head, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this1, i32 0, i32 1
  store i32 -1, ptr %tail, align 4
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this1, i32 0, i32 2
  store i64 0, ptr %quantity, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this1, i32 0, i32 3
  store i32 0, ptr %orders, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::allocator.12", align 1
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  %1 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  %call = call noundef i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %1 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
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
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 1152921504606846975, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %1, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %2 = load ptr, ptr %_M_start6, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaImE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaImE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 2305843009213693951
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 8
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPmmET_S1_T0_(ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPmmET_S1_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %__can_fill) #17
  store i8 1, ptr %__can_fill, align 1
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPmmEET_S3_T0_(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__can_fill) #17
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPmmEET_S3_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__val = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #17
  %1 = load ptr, ptr %__first.addr, align 8
  store ptr %1, ptr %__val, align 8
  %2 = load ptr, ptr %__val, align 8
  call void @_ZSt10_ConstructImJEEvPT_DpOT0_(ptr noundef %2)
  %3 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  %4 = load ptr, ptr %__first.addr, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %sub = sub i64 %5, 1
  %6 = load ptr, ptr %__val, align 8
  %call = call noundef ptr @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(ptr noundef %4, i64 noundef %sub, ptr noundef nonnull align 8 dereferenceable(8) %6)
  store ptr %call, ptr %__first.addr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %__first.addr, align 8
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructImJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1)
  %2 = load ptr, ptr %__value.addr, align 8
  call void @_ZSt19__iterator_categoryIPmENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %__first.addr)
  %call1 = call noundef ptr @_ZSt10__fill_n_aIPmmmET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %call, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %call1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPmmmET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %retval = alloca ptr, align 8
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ule i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__first.addr, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %__first.addr, align 8
  %4 = load ptr, ptr %__first.addr, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load ptr, ptr %__value.addr, align 8
  call void @_ZSt8__fill_aIPmmEvT_S1_RKT0_(ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = load ptr, ptr %__first.addr, align 8
  %8 = load i64, ptr %__n.addr, align 8
  %add.ptr1 = getelementptr inbounds i64, ptr %7, i64 %8
  store ptr %add.ptr1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %__n) #8 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  ret i64 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPmENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat {
entry:
  %.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPmmEvT_S1_RKT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__value.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__value.addr, align 8
  call void @_ZSt9__fill_a1IPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 8 dereferenceable(8) %__value) #8 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__value.addr = alloca ptr, align 8
  %__tmp = alloca i64, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #17
  %0 = load ptr, ptr %__value.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %__tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %__first.addr, align 8
  %3 = load ptr, ptr %__last.addr, align 8
  %cmp = icmp ne ptr %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %__tmp, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  store i64 %4, ptr %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPmEvT_S1_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmEvT_S1_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %retval = alloca i32, align 4
  %__x.addr = alloca i64, align 8
  %_Nd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_Nd_ull = alloca i32, align 4
  %_Nd_ul = alloca i32, align 4
  %_Nd_u = alloca i32, align 4
  %__diff = alloca i32, align 4
  store i64 %__x, ptr %__x.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd) #17
  store i32 64, ptr %_Nd, align 4
  %0 = load i64, ptr %__x.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ull) #17
  store i32 64, ptr %_Nd_ull, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ul) #17
  store i32 64, ptr %_Nd_ul, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_u) #17
  store i32 32, ptr %_Nd_u, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__diff) #17
  store i32 0, ptr %__diff, align 4
  %1 = load i64, ptr %__x.addr, align 8
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %sub = sub nsw i32 %cast, 0
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__diff) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_u) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ul) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ull) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd) #17
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countr_zeroImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %retval = alloca i32, align 4
  %__x.addr = alloca i64, align 8
  %_Nd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_Nd_ull = alloca i32, align 4
  %_Nd_ul = alloca i32, align 4
  %_Nd_u = alloca i32, align 4
  store i64 %__x, ptr %__x.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd) #17
  store i32 64, ptr %_Nd, align 4
  %0 = load i64, ptr %__x.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ull) #17
  store i32 64, ptr %_Nd_ull, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ul) #17
  store i32 64, ptr %_Nd_ul, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_u) #17
  store i32 32, ptr %_Nd_u, align 4
  %1 = load i64, ptr %__x.addr, align 8
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  store i32 %cast, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_u) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ul) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ull) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd) #17
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %id.addr, align 8
  %shr = lshr i64 %0, 30
  %1 = load i64, ptr %id.addr, align 8
  %xor = xor i64 %1, %shr
  store i64 %xor, ptr %id.addr, align 8
  %2 = load i64, ptr %id.addr, align 8
  %mul = mul i64 %2, -4658895280553007687
  store i64 %mul, ptr %id.addr, align 8
  %3 = load i64, ptr %id.addr, align 8
  %shr2 = lshr i64 %3, 27
  %4 = load i64, ptr %id.addr, align 8
  %xor3 = xor i64 %4, %shr2
  store i64 %xor3, ptr %id.addr, align 8
  %5 = load i64, ptr %id.addr, align 8
  %mul4 = mul i64 %5, -7723592293110705685
  store i64 %mul4, ptr %id.addr, align 8
  %6 = load i64, ptr %id.addr, align 8
  %shr5 = lshr i64 %6, 31
  %7 = load i64, ptr %id.addr, align 8
  %xor6 = xor i64 %7, %shr5
  store i64 %xor6, ptr %id.addr, align 8
  %8 = load i64, ptr %id.addr, align 8
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this1, i32 0, i32 1
  %9 = load i64, ptr %mask_, align 8
  %and = and i64 %8, %9
  ret i64 %and
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_extent = getelementptr inbounds %"class.std::span", ptr %this1, i32 0, i32 1
  %call = call noundef i64 @_ZNKSt8__detail16__extent_storageILm18446744073709551615EE9_M_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %_M_extent) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EEixEm(ptr noundef nonnull align 8 dereferenceable(16) %this, i64 noundef %__idx) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__idx.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__idx, ptr %__idx.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %_M_ptr = getelementptr inbounds %"class.std::span", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_ptr, align 8
  %1 = load i64, ptr %__idx.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::Event", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8__detail16__extent_storageILm18446744073709551615EE9_M_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_extent_value = getelementptr inbounds %"class.std::__detail::__extent_storage", ptr %this1, i32 0, i32 0
  %0 = load i64, ptr %_M_extent_value, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger10StatisticsC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 0
  store i64 0, ptr %submitted, align 8
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 1
  store i64 0, ptr %executed, align 8
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 2
  store i64 0, ptr %cancelled, align 8
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 3
  store i64 0, ptr %expired, align 8
  %rejected = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 4
  store i64 0, ptr %rejected, align 8
  %trade_count = getelementptr inbounds %"struct.ledger::Statistics", ptr %this1, i32 0, i32 5
  store i64 0, ptr %trade_count, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSaIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSaIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this1, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this1, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this1, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 2
  %0 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %3 = load ptr, ptr %__alloc.addr, align 8
  %call = call noundef ptr @_ZSt12__relocate_aIPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 288230376151711743, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 576460752303423487
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaIN6ledger12RestingOrderEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger12RestingOrderEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger12RestingOrderEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 576460752303423487
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 32
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger12RestingOrderEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 288230376151711743
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %0) #17
  %1 = load ptr, ptr %__last.addr, align 8
  %call1 = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %1) #17
  %2 = load ptr, ptr %__result.addr, align 8
  %call2 = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %2) #17
  %3 = load ptr, ptr %__alloc.addr, align 8
  %call3 = call noundef ptr @_ZSt14__relocate_a_1IPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %call3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__cur = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cur) #17
  %0 = load ptr, ptr %__result.addr, align 8
  store ptr %0, ptr %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %__cur, align 8
  %4 = load ptr, ptr %__first.addr, align 8
  %5 = load ptr, ptr %__alloc.addr, align 8
  call void @_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %6, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  %7 = load ptr, ptr %__cur, align 8
  %incdec.ptr1 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %7, i32 1
  store ptr %incdec.ptr1, ptr %__cur, align 8
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %__cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  ret ptr %8
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %__it) #8 comdat {
entry:
  %__it.addr = alloca ptr, align 8
  store ptr %__it, ptr %__it.addr, align 8
  %0 = load ptr, ptr %__it.addr, align 8
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %__dest, ptr noalias noundef %__orig, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__dest.addr = alloca ptr, align 8
  %__orig.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  store ptr %__orig, ptr %__orig.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load ptr, ptr %__dest.addr, align 8
  %2 = load ptr, ptr %__orig.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) #17
  %3 = load ptr, ptr %__alloc.addr, align 8
  %4 = load ptr, ptr %__orig.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZSt12construct_atIN6ledger12RestingOrderEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  invoke void @_ZSt10destroy_atIN6ledger12RestingOrderEEvPT_(ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12construct_atIN6ledger12RestingOrderEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %__location, ptr noundef nonnull align 8 dereferenceable(28) %__args) #6 comdat {
entry:
  %__location.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__location, ptr %__location.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__location.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10destroy_atIN6ledger12RestingOrderEEvPT_(ptr noundef %__location) #8 comdat {
entry:
  %__location.addr = alloca ptr, align 8
  store ptr %__location, ptr %__location.addr, align 8
  %0 = load ptr, ptr %__location.addr, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaIN6ledger12RestingOrderEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  %2 = load ptr, ptr %_M_finish5, align 8
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3) #17
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl6, i32 0, i32 1
  %4 = load ptr, ptr %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %agg.tmp, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %5 = load ptr, ptr %__args.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %agg.tmp, i32 0, i32 0
  %6 = load ptr, ptr %coerce.dive8, align 8
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr %6, ptr noundef nonnull align 8 dereferenceable(28) %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret ptr %call9
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZSt12construct_atIN6ledger13LevelSnapshotEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca ptr, align 8
  %__old_finish = alloca ptr, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %__new_start = alloca ptr, align 8
  %__new_finish = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %__position, i32 0, i32 0
  store ptr %__position.coerce, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__len) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1, ptr noundef @.str.5)
  store i64 %call, ptr %__len, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_start) #17
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  store ptr %0, ptr %__old_start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_finish) #17
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  store ptr %1, ptr %__old_finish, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__elems_before) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call3 = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef i64 @_ZN9__gnu_cxxmiIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  store i64 %call5, ptr %__elems_before, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new_start) #17
  %2 = load i64, ptr %__len, align 8
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %2)
  store ptr %call6, ptr %__new_start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new_finish) #17
  %3 = load ptr, ptr %__new_start, align 8
  store ptr %3, ptr %__new_finish, align 8
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__new_start, align 8
  %5 = load i64, ptr %__elems_before, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %4, i64 %5
  %6 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl7, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(28) %6) #17
  store ptr null, ptr %__new_finish, align 8
  %7 = load ptr, ptr %__old_start, align 8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %8 = load ptr, ptr %call8, align 8
  %9 = load ptr, ptr %__new_start, align 8
  %call9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call10 = call noundef ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %call9) #17
  store ptr %call10, ptr %__new_finish, align 8
  %10 = load ptr, ptr %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %10, i32 1
  store ptr %incdec.ptr, ptr %__new_finish, align 8
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %11 = load ptr, ptr %call11, align 8
  %12 = load ptr, ptr %__old_finish, align 8
  %13 = load ptr, ptr %__new_finish, align 8
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call13 = call noundef ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %call12) #17
  store ptr %call13, ptr %__new_finish, align 8
  %14 = load ptr, ptr %__old_start, align 8
  %_M_impl14 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl14, i32 0, i32 2
  %15 = load ptr, ptr %_M_end_of_storage, align 8
  %16 = load ptr, ptr %__old_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %14, i64 noundef %sub.ptr.div)
  %17 = load ptr, ptr %__new_start, align 8
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %17, ptr %_M_start16, align 8
  %18 = load ptr, ptr %__new_finish, align 8
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %18, ptr %_M_finish18, align 8
  %19 = load ptr, ptr %__new_start, align 8
  %20 = load i64, ptr %__len, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %19, i64 %20
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_end_of_storage21 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl20, i32 0, i32 2
  store ptr %add.ptr19, ptr %_M_end_of_storage21, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new_finish) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new_start) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__elems_before) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_finish) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_start) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__len) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %__location.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__location, ptr %__location.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__location.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca ptr, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %sub = sub i64 %call, %call2
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %1) #18
  unreachable

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__len) #17
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  store i64 %call4, ptr %ref.tmp, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__n.addr)
  %2 = load i64, ptr %call5, align 8
  %add = add i64 %call3, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  store i64 %add, ptr %__len, align 8
  %3 = load i64, ptr %__len, align 8
  %call6 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, ptr %__len, align 8
  %call8 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, ptr %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %__len) #17
  ret i64 %cond
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #8 comdat {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %1 = load ptr, ptr %call, align 8
  %2 = load ptr, ptr %__rhs.addr, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %3 = load ptr, ptr %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_start) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %1)
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %3 = load ptr, ptr %__alloc.addr, align 8
  %call = call noundef ptr @_ZSt12__relocate_aIPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this1, i32 0, i32 0
  ret ptr %_M_current
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %1, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
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
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %__b.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 288230376151711743, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %1 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  ret i64 576460752303423487
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %_M_current, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSaIN6ledger13LevelSnapshotEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger13LevelSnapshotEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger13LevelSnapshotEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 576460752303423487
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %3, 32
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger13LevelSnapshotEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 288230376151711743
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %0) #17
  %1 = load ptr, ptr %__last.addr, align 8
  %call1 = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %1) #17
  %2 = load ptr, ptr %__result.addr, align 8
  %call2 = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %2) #17
  %3 = load ptr, ptr %__alloc.addr, align 8
  %call3 = call noundef ptr @_ZSt14__relocate_a_1IPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %call3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__cur = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cur) #17
  %0 = load ptr, ptr %__result.addr, align 8
  store ptr %0, ptr %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %__cur, align 8
  %4 = load ptr, ptr %__first.addr, align 8
  %5 = load ptr, ptr %__alloc.addr, align 8
  call void @_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %6, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  %7 = load ptr, ptr %__cur, align 8
  %incdec.ptr1 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %7, i32 1
  store ptr %incdec.ptr1, ptr %__cur, align 8
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %__cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cur) #17
  ret ptr %8
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %__it) #8 comdat {
entry:
  %__it.addr = alloca ptr, align 8
  store ptr %__it, ptr %__it.addr, align 8
  %0 = load ptr, ptr %__it.addr, align 8
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %__dest, ptr noalias noundef %__orig, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %__dest.addr = alloca ptr, align 8
  %__orig.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  store ptr %__orig, ptr %__orig.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load ptr, ptr %__dest.addr, align 8
  %2 = load ptr, ptr %__orig.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) #17
  %3 = load ptr, ptr %__alloc.addr, align 8
  %4 = load ptr, ptr %__orig.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  invoke void @_ZSt10destroy_atIN6ledger13LevelSnapshotEEvPT_(ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10destroy_atIN6ledger13LevelSnapshotEEvPT_(ptr noundef %__location) #8 comdat {
entry:
  %__location.addr = alloca ptr, align 8
  store ptr %__location, ptr %__location.addr, align 8
  %0 = load ptr, ptr %__location.addr, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSaIN6ledger13LevelSnapshotEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  %2 = load ptr, ptr %_M_finish5, align 8
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3) #17
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl6, i32 0, i32 1
  %4 = load ptr, ptr %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %agg.tmp, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %5 = load ptr, ptr %__args.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %agg.tmp, i32 0, i32 0
  %6 = load ptr, ptr %coerce.dive8, align 8
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr %6, ptr noundef nonnull align 8 dereferenceable(28) %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  ret ptr %call9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca ptr, align 8
  %__old_finish = alloca ptr, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__new_start = alloca ptr, align 8
  %__new_finish = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %__position, i32 0, i32 0
  store ptr %__position.coerce, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__len) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1, ptr noundef @.str.5)
  store i64 %call, ptr %__len, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_start) #17
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  store ptr %0, ptr %__old_start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_finish) #17
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  store ptr %1, ptr %__old_finish, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__elems_before) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call3 = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef i64 @_ZN9__gnu_cxxmiIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  store i64 %call5, ptr %__elems_before, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new_start) #17
  %2 = load i64, ptr %__len, align 8
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %2)
  store ptr %call6, ptr %__new_start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new_finish) #17
  %3 = load ptr, ptr %__new_start, align 8
  store ptr %3, ptr %__new_finish, align 8
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__new_start, align 8
  %5 = load i64, ptr %__elems_before, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %4, i64 %5
  %6 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl7, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(28) %6) #17
  store ptr null, ptr %__new_finish, align 8
  %7 = load ptr, ptr %__old_start, align 8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %8 = load ptr, ptr %call8, align 8
  %9 = load ptr, ptr %__new_start, align 8
  %call9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call10 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %call9) #17
  store ptr %call10, ptr %__new_finish, align 8
  %10 = load ptr, ptr %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %10, i32 1
  store ptr %incdec.ptr, ptr %__new_finish, align 8
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %11 = load ptr, ptr %call11, align 8
  %12 = load ptr, ptr %__old_finish, align 8
  %13 = load ptr, ptr %__new_finish, align 8
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call13 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %call12) #17
  store ptr %call13, ptr %__new_finish, align 8
  %14 = load ptr, ptr %__old_start, align 8
  %_M_impl14 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl14, i32 0, i32 2
  %15 = load ptr, ptr %_M_end_of_storage, align 8
  %16 = load ptr, ptr %__old_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %14, i64 noundef %sub.ptr.div)
  %17 = load ptr, ptr %__new_start, align 8
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %17, ptr %_M_start16, align 8
  %18 = load ptr, ptr %__new_finish, align 8
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %18, ptr %_M_finish18, align 8
  %19 = load ptr, ptr %__new_start, align 8
  %20 = load i64, ptr %__len, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %19, i64 %20
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage21 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl20, i32 0, i32 2
  store ptr %add.ptr19, ptr %_M_end_of_storage21, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new_finish) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new_start) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__elems_before) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_finish) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_start) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__len) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca ptr, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %sub = sub i64 %call, %call2
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %1) #18
  unreachable

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__len) #17
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  store i64 %call4, ptr %ref.tmp, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__n.addr)
  %2 = load i64, ptr %call5, align 8
  %add = add i64 %call3, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  store i64 %add, ptr %__len, align 8
  %3 = load i64, ptr %__len, align 8
  %call6 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, ptr %__len, align 8
  %call8 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, ptr %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %__len) #17
  ret i64 %cond
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #8 comdat {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %1 = load ptr, ptr %call, align 8
  %2 = load ptr, ptr %__rhs.addr, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %3 = load ptr, ptr %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_start) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this1, i32 0, i32 0
  ret ptr %_M_current
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPN6ledger13LevelSnapshotES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
  invoke void @_ZSt8_DestroyIPN6ledger12RestingOrderES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #17
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPN6ledger13LevelSnapshotEEvT_S3_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  invoke void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this1, i32 0, i32 0
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger13LevelSnapshotEEEvT_S5_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger13LevelSnapshotEEEvT_S5_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger12RestingOrderES1_EvT_S3_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  call void @_ZSt8_DestroyIPN6ledger12RestingOrderEEvT_S3_(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  invoke void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this1, i32 0, i32 0
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
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger12RestingOrderEEEvT_S5_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger12RestingOrderEEEvT_S5_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::allocator.12", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__q = alloca ptr, align 8
  %__start = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q) #17
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %1)
  store ptr %call, ptr %__q, align 8
  %2 = load ptr, ptr %__q, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %3)
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %call2
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %__start) #17
  %4 = load ptr, ptr %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %__start, ptr noundef %4, i32 noundef 0)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_M_start, ptr align 8 %__start, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %5 = load i64, ptr %__n.addr, align 8
  %call4 = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %__start, i64 noundef %5)
  %6 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %7 = extractvalue { ptr, i32 } %call4, 0
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %9 = extractvalue { ptr, i32 } %call4, 1
  store i32 %9, ptr %8, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_M_finish, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %__start) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %this, i1 noundef zeroext %__x) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca i8, align 1
  %__p = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__x to i8
  store i8 %frombool, ptr %__x.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__p) #17
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 0
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  store ptr %0, ptr %__p, align 8
  %1 = load ptr, ptr %__p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__p, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl2) #17
  %3 = load ptr, ptr %__p, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %4 = load i8, ptr %__x.addr, align 1, !range !5, !noundef !6
  %tobool3 = trunc i8 %4 to i1
  call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %2, i64 noundef %sub.ptr.div, i1 noundef zeroext %tobool3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %__p) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this1, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef %__x, i32 noundef %__y) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store i32 %__y, ptr %__y.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %_M_p, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 1
  %1 = load i32, ptr %__y.addr, align 4
  store i32 %1, ptr %_M_offset, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__p = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__p) #17
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %0)
  %call2 = call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %call)
  store ptr %call2, ptr %__p, align 8
  %1 = load ptr, ptr %__p, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__p) #17
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %__n) #6 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %add = add i64 %0, 64
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 64
  ret i64 %div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef %__x, i32 noundef %__y) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store i32 %__y, ptr %__y.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load i32, ptr %__y.addr, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this1, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %__x, i64 noundef %__n) #0 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %__x.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 16, i1 false)
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %retval, i64 noundef %1)
  %2 = load { ptr, i32 }, ptr %retval, align 8
  ret { ptr, i32 } %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__i.addr, align 8
  call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %this1, i64 noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca i64, align 8
  %__n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #17
  %0 = load i64, ptr %__i.addr, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 1
  %1 = load i32, ptr %_M_offset, align 8
  %conv = zext i32 %1 to i64
  %add = add nsw i64 %0, %conv
  store i64 %add, ptr %__n, align 8
  %2 = load i64, ptr %__n, align 8
  %div = sdiv i64 %2, 64
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %_M_p, align 8
  %add.ptr = getelementptr inbounds i64, ptr %3, i64 %div
  store ptr %add.ptr, ptr %_M_p, align 8
  %4 = load i64, ptr %__n, align 8
  %rem = srem i64 %4, 64
  store i64 %rem, ptr %__n, align 8
  %5 = load i64, ptr %__n, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %__n, align 8
  %add2 = add nsw i64 %6, 64
  store i64 %add2, ptr %__n, align 8
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %_M_p3, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr %_M_p3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %__n, align 8
  %conv4 = trunc i64 %8 to i32
  %_M_offset5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 1
  store i32 %conv4, ptr %_M_offset5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__fill_bvector_nPmmb(ptr noundef nonnull %__p, i64 noundef %__n, i1 noundef zeroext %__x) #8 comdat {
entry:
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i8, align 1
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %frombool = zext i1 %__x to i8
  store i8 %frombool, ptr %__x.addr, align 1
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i8, ptr %__x.addr, align 1, !range !5, !noundef !6
  %tobool = trunc i8 %1 to i1
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 0
  %3 = trunc i32 %cond to i8
  %4 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %4, 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 %3, i64 %mul, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %_M_end_of_storage, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_end_of_storage2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage2, align 8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 -1
  %add.ptr = getelementptr inbounds i64, ptr %arrayidx, i64 1
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 0
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #17
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl2) #17
  %_M_impl3 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %_M_p5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start4, i32 0, i32 0
  %1 = load ptr, ptr %_M_p5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__n, align 8
  %_M_impl6 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_impl7 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl7, i32 0, i32 2
  %2 = load ptr, ptr %_M_end_of_storage, align 8
  %3 = load i64, ptr %__n, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %idx.neg
  %4 = load i64, ptr %__n, align 8
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl6, ptr noundef %add.ptr, i64 noundef %4)
  %_M_impl8 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %ref.tmp) #17
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %ref.tmp) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %this1, ptr align 8 %ref.tmp, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %_M_start)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this1, i32 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %_M_finish)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this1, i32 0, i32 2
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_len = getelementptr inbounds %"class.std::initializer_list", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %_M_len, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %0 = load i64, ptr %__i.addr, align 8
  %call = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %this1, i64 noundef %0)
  %1 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %2 = extractvalue { ptr, i32 } %call, 0
  store ptr %2, ptr %1, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %4 = extractvalue { ptr, i32 } %call, 1
  store i32 %4, ptr %3, align 8
  %call2 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %ref.tmp)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 0
  %6 = extractvalue { ptr, i64 } %call2, 0
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 1
  %8 = extractvalue { ptr, i64 } %call2, 1
  store i64 %8, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %9 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this1)
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this1, i32 0, i32 1
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
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store i64 %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %_M_p, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__y.addr, align 8
  store i64 %1, ptr %_M_mask, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorImSaImEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this1, i32 0, i32 0
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
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this1, i32 0, i32 0
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
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !8, !9}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !8, !9}
!34 = distinct !{!34, !8, !9}
!35 = distinct !{!35, !8, !9}
!36 = distinct !{!36, !8, !9}
!37 = distinct !{!37, !8, !9}
!38 = distinct !{!38, !8, !9}
!39 = distinct !{!39, !8, !9}
