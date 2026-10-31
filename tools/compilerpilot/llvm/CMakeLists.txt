cmake_minimum_required(VERSION 3.21)
project(CompilerPilotLLVMPass LANGUAGES C CXX)

# Plugins and opt must come from the same LLVM installation, not merely a
# compatible-looking system compiler. The tested API/IR version is LLVM 18.
find_package(LLVM REQUIRED CONFIG)
if(NOT LLVM_VERSION_MAJOR EQUAL 18)
  message(FATAL_ERROR "CompilerPilot's pass experiment requires LLVM 18")
endif()
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

add_llvm_pass_plugin(LedgerLoadElim LedgerLoadElim.cpp)
target_compile_features(LedgerLoadElim PRIVATE cxx_std_17)
target_include_directories(LedgerLoadElim SYSTEM PRIVATE ${LLVM_INCLUDE_DIRS})
separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND "${LLVM_DEFINITIONS}")
target_compile_options(LedgerLoadElim PRIVATE ${LLVM_DEFINITIONS_LIST})

include(CTest)
if(BUILD_TESTING)
  find_package(Python3 3.11 REQUIRED COMPONENTS Interpreter)
  # Look in the selected installation only, avoiding an accidental opt/lli from
  # another LLVM major version earlier on PATH.
  find_program(LEDGER_OPT NAMES opt HINTS "${LLVM_TOOLS_BINARY_DIR}" NO_DEFAULT_PATH REQUIRED)
  find_program(LEDGER_LLI NAMES lli HINTS "${LLVM_TOOLS_BINARY_DIR}" NO_DEFAULT_PATH REQUIRED)
  find_program(LEDGER_FILECHECK NAMES FileCheck HINTS "${LLVM_TOOLS_BINARY_DIR}" NO_DEFAULT_PATH REQUIRED)
  add_test(NAME llvm_load_elim
    COMMAND "${Python3_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/tests/check_pass.py"
      --plugin "$<TARGET_FILE:LedgerLoadElim>" --opt "${LEDGER_OPT}"
      --lli "${LEDGER_LLI}" --filecheck "${LEDGER_FILECHECK}")
  set_tests_properties(llvm_load_elim PROPERTIES TIMEOUT 120)
endif()
