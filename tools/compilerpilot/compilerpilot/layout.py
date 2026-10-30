"""Locate the live Ledger checkout independently of the caller's working directory."""
from __future__ import annotations

from pathlib import Path

PROJECT = Path(__file__).resolve().parents[1]
LEDGER_MARKERS = ("CMakeLists.txt", "src/book.cpp", "include/ledger/book.hpp")


def find_ledger_root(start: Path | None = None) -> Path | None:
    """Find Ledger above this package, including when installed in editable mode."""
    anchor = Path(start if start is not None else PROJECT).resolve()
    if anchor.is_file():
        anchor = anchor.parent
    for directory in (anchor, *anchor.parents):
        if all((directory / marker).is_file() for marker in LEDGER_MARKERS):
            return directory
    return None


def require_ledger_root(ledger: Path | None = None) -> Path:
    """Honor an explicit checkout; otherwise use this package's enclosing Ledger."""
    if ledger is not None:
        explicit = Path(ledger).resolve()
        if not all((explicit / marker).is_file() for marker in LEDGER_MARKERS):
            raise ValueError(f"--ledger must name a Ledger source root: {explicit}")
        return explicit
    found = find_ledger_root()
    if found is None:
        raise ValueError("Cannot locate the live Ledger checkout; supply --ledger PATH")
    return found
