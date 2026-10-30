"""Append-only JSON evidence with an atomically refreshed Parquet index."""
from __future__ import annotations
import json
import os
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

_PROGRESS_EVENTS = frozenset({'baseline_observation', 'baseline', 'build', 'trial',
                              'baseline_checkpoint', 'finish', 'stopped',
                              'llm_request', 'llm_response', 'tool_result'})


def json_value(value: Any) -> Any:
    if isinstance(value, Path):
        return str(value)
    if hasattr(value, 'to_dict'):
        return value.to_dict()
    raise TypeError(f'Not JSON serializable: {type(value).__name__}')


class Store:
    def __init__(self, root: Path, run_id: str):
        if not run_id or any(c not in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_' for c in run_id):
            raise ValueError('run_id must contain only letters, numbers, dash or underscore')
        self.root = Path(root)
        self.run_dir = self.root / 'runs' / run_id
        self.run_dir.mkdir(parents=True, exist_ok=False)
        self.rows: list[dict] = []
        self.progress_enabled = os.environ.get('COMPILERPILOT_PROGRESS') == '1'
        self._progress_count = 0

    def trace(self, event: str, data: Any) -> None:
        # Callers never place credentials in trace payloads.
        record = {'time': datetime.now(timezone.utc).isoformat(), 'event': event, 'data': data}
        with (self.run_dir / 'trace.jsonl').open('a') as out:
            out.write(json.dumps(record, default=json_value, allow_nan=False) + '\n')
        self._progress_count += 1
        if self.progress_enabled and isinstance(event, str) and event in _PROGRESS_EVENTS:
            # Actual recorded events only; never expose payloads, caller strings,
            # credentials or model text in terminal progress.
            try:
                print(json.dumps({'compilerpilot_progress': event,
                                  'events_recorded': self._progress_count}),
                      file=sys.stderr, flush=True)
            except (OSError, ValueError):
                self.progress_enabled = False

    def append(self, trial: dict) -> None:
        encoded = json.dumps(trial, default=json_value, allow_nan=False)
        with (self.run_dir / 'trials.jsonl').open('a') as out:
            out.write(encoded + '\n')
            out.flush()
            os.fsync(out.fileno())
        self.rows.append(json.loads(encoded))
        self.trace('trial', trial)
        self.export()

    def export(self) -> None:
        import pandas as pd
        rows = []
        for file in sorted((self.root / 'runs').glob('*/trials.jsonl')):
            snapshot = file.parent / 'history.json'
            records = [json.loads(line) for line in file.read_text().splitlines() if line.strip()]
            # A previous snapshot must not hide the trial just appended to JSONL.
            # Snapshot rows override immutable evidence after drift invalidation.
            if snapshot.exists():
                latest = {row['build_id']: row for row in json.loads(snapshot.read_text())}
                records = [latest.get(row['build_id'], row) for row in records]
            for row in records:
                rows.append({k: json.dumps(v, sort_keys=True) if isinstance(v, (dict, list)) else v for k, v in row.items()})
        if rows:
            temp = self.root / 'trials.parquet.tmp'
            pd.DataFrame(rows).to_parquet(temp, index=False)
            temp.replace(self.root / 'trials.parquet')

    def write(self, name: str, value: Any) -> None:
        if Path(name).name != name:
            raise ValueError('Output must be a filename')
        destination = self.run_dir / name
        temporary = destination.with_name(destination.name + '.tmp')
        temporary.write_text(json.dumps(value, indent=2, default=json_value, allow_nan=False) + '\n')
        temporary.replace(destination)
