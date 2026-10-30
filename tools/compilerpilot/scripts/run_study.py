#!/usr/bin/env python3
"""Run one explicitly named, reproducible CompilerPilot study attempt."""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from compilerpilot.study import run

if __name__ == "__main__":
    raise SystemExit(run())
