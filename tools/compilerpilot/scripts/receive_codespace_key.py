#!/usr/bin/env python3
"""Decrypt inside the Codespace and set only the child study environment."""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from compilerpilot.codespace_access import receive_main

if __name__ == '__main__':
    raise SystemExit(receive_main())
