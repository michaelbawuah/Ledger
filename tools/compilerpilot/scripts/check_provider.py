#!/usr/bin/env python3
"""One bounded compatibility request, without building or benchmarking Ledger."""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from compilerpilot.provider_preflight import main

if __name__ == '__main__':
    raise SystemExit(main())
