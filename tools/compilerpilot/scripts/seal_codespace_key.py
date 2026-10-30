#!/usr/bin/env python3
"""Seal an Actions credential for an ephemeral Codespace public key."""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from compilerpilot.codespace_access import main

if __name__ == '__main__':
    raise SystemExit(main())
