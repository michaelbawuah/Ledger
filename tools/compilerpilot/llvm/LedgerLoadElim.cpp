// A deliberately small, conservative MemorySSA-based load elimination pass.
// This overlaps LLVM's EarlyCSE/GVN. It is an inspectable pass-development
// experiment, not a claim of a new optimization or a faster O2/O3 pipeline.
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/MemorySSAUpdater.h"
#include "llvm/Config/llvm-config.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/JSON.h"
#include "llvm/Support/raw_ostream.h"
#include <utility>

using namespace llvm;

namespace {
struct AvailableLoad {
  LoadInst *Load;
  MemoryAccess *Clobber;
};

class LedgerLoadElimPass : public PassInfoMixin<LedgerLoadElimPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
    auto &MSSA = AM.getResult<MemorySSAAnalysis>(F).getMSSA();
    auto *Walker = MSSA.getWalker();
    SmallVector<std::pair<LoadInst *, LoadInst *>, 16> Replacements;
    unsigned LoadsSeen = 0;

    // Query an unchanged IR/MemorySSA graph throughout discovery. Each table is
    // local to a basic block, so the representative always dominates the later
    // load without speculative execution or a control-flow change.
    for (BasicBlock &BB : F) {
      DenseMap<std::pair<Value *, Type *>, AvailableLoad> Available;
      for (Instruction &I : BB) {
        if (auto *Load = dyn_cast<LoadInst>(&I)) {
          ++LoadsSeen;
          SmallVector<std::pair<unsigned, MDNode *>, 4> Metadata;
          Load->getAllMetadataOtherThanDebugLoc(Metadata);
          // Atomics/volatiles can synchronize or be observable. Metadata can
          // add poison, aliasing or invariant-group semantics. We do not try to
          // combine those contracts; encountering one also ends availability.
          if (!Load->isSimple() || !Load->getType()->isIntegerTy() ||
              !Metadata.empty()) {
            Available.clear();
            continue;
          }
          auto Key = std::make_pair(Load->getPointerOperand(), Load->getType());
          MemoryAccess *Clobber = Walker->getClobberingMemoryAccess(
              MSSA.getMemoryAccess(Load));
          auto Found = Available.find(Key);
          if (Found != Available.end() && Found->second.Clobber == Clobber) {
            Replacements.emplace_back(Load, Found->second.Load);
            // Keep the surviving first read, never a load scheduled for erase.
          } else {
            Available[Key] = AvailableLoad{Load, Clobber};
          }
          continue;
        }

        if (auto *Store = dyn_cast<StoreInst>(&I)) {
          if (!Store->isSimple())
            Available.clear();
          // Ordinary writes are handled by MemorySSA's alias-aware clobber
          // query. A provably disjoint store need not end availability.
          continue;
        }

        // All calls are barriers here, even readnone/readonly calls. This also
        // covers lifetime/invariant intrinsics, inline asm and convergent calls.
        // Fences/atomic RMW/cmpxchg and other unmodelled memory operations must
        // not be crossed by this intentionally narrow transformation.
        if (isa<CallBase>(I) || isa<FenceInst>(I) || I.mayReadOrWriteMemory())
          Available.clear();
      }
    }

    if (!Replacements.empty()) {
      MemorySSAUpdater Updater(&MSSA);
      for (auto [Redundant, Original] : Replacements) {
        Updater.removeMemoryAccess(MSSA.getMemoryAccess(Redundant));
        Redundant->replaceAllUsesWith(Original);
        Redundant->eraseFromParent();
      }
      MSSA.verifyMemorySSA();
    }

    json::Object Report{{"pass", "ledger-load-elim"},
                        {"llvm_version", LLVM_VERSION_STRING},
                        {"function", F.getName()},
                        {"loads_seen", LoadsSeen},
                        {"loads_removed", Replacements.size()}};
    errs() << json::Value(std::move(Report)) << '\n';
    // The updater keeps the temporary graph valid during erasure. We still
    // invalidate analyses on change rather than promising to maintain AA or
    // other analyses that may depend on the removed values.
    return Replacements.empty() ? PreservedAnalyses::all()
                                : PreservedAnalyses::none();
  }
};
} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "LedgerLoadElim", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement> InnerPipeline) {
                  if (Name != "ledger-load-elim" || !InnerPipeline.empty())
                    return false;
                  FPM.addPass(LedgerLoadElimPass());
                  return true;
                });
          }};
}
