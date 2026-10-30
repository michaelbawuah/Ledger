"""An atomic, shared spending ledger for the approved OpenAI study allocation.

Reservations charge a conservative upper bound before any request can leave.
Only verified usage refunds the difference. Cached input receives no discount in
this ledger, so recorded charges conservatively bound standard-tier API cost.
"""
from __future__ import annotations

import argparse
from contextlib import contextmanager
from datetime import datetime, timezone
from decimal import Decimal, InvalidOperation
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import tempfile
from typing import Any
from uuid import uuid4

MODEL = 'gpt-4.1-mini-2025-04-14'
ALLOCATION_ID = 'ledger-compilerpilot-20261030-approved-usd15'
DEFAULT_LIMIT_USD = '9.99'
PREFLIGHT_RESERVE_NUSD = 10_000_000  # $0.01, permanently held outside study requests.
MAX_LIMIT_NUSD = 9_990_000_000
NUSD_PER_USD = 1_000_000_000
INPUT_CONTEXT_TOKENS = 1_047_576
INPUT_NUSD_PER_TOKEN = 400          # $0.40 / million tokens.
OUTPUT_NUSD_PER_TOKEN = 1_600       # $1.60 / million tokens.
MAX_COMPLETION_TOKENS = 4_096


class BudgetError(RuntimeError):
    pass


def _now() -> str:
    return datetime.now(timezone.utc).isoformat()


def _limit(value: Any) -> int:
    if isinstance(value, bool):
        raise BudgetError('API budget must be a positive amount with at most nine decimal places')
    try:
        amount = Decimal(str(value))
        nanos = amount * NUSD_PER_USD
        if (not amount.is_finite() or nanos != nanos.to_integral_value()
                or not 0 < nanos <= MAX_LIMIT_NUSD):
            raise ValueError
        return int(nanos)
    except (InvalidOperation, ValueError, OverflowError):
        raise BudgetError('API budget must be positive, at most $9.99, with at most nine decimal places') from None


def _usd(nanos: int) -> str:
    return format(Decimal(nanos) / NUSD_PER_USD, 'f')


def request_bound(model: str, max_completion_tokens: int) -> int:
    if model != MODEL:
        raise BudgetError('This allocation permits only gpt-4.1-mini-2025-04-14 at vetted standard-tier rates')
    if type(max_completion_tokens) is not int or not 1 <= max_completion_tokens <= MAX_COMPLETION_TOKENS:
        raise BudgetError('Completion limit must be an integer in 1..4096')
    return INPUT_CONTEXT_TOKENS * INPUT_NUSD_PER_TOKEN + max_completion_tokens * OUTPUT_NUSD_PER_TOKEN


class ApiBudget:
    def __init__(self, path: Path, limit_usd: str = DEFAULT_LIMIT_USD):
        self.path = Path(path).absolute()
        self.limit_nusd = _limit(limit_usd)
        lock_path = self.path.with_name(self.path.name + '.lock')
        if (not self.path.is_file() or self.path.is_symlink()
                or not lock_path.is_file() or lock_path.is_symlink()):
            raise BudgetError('Shared API budget ledger is missing; initialize it explicitly once or restore the existing allocation')
        with self._locked():
            self._read()

    @classmethod
    def initialize(cls, path: Path, limit_usd: str = DEFAULT_LIMIT_USD) -> 'ApiBudget':
        """Explicit one-time allocation creation; never called by agent/study paths."""
        obj = object.__new__(cls)
        obj.path = Path(path).absolute()
        obj.limit_nusd = _limit(limit_usd)
        obj.path.parent.mkdir(parents=True, exist_ok=True)
        with obj._locked() as lock:
            lock.seek(0)
            if lock.read().strip() or obj.path.exists() or obj.path.is_symlink():
                raise BudgetError('API allocation already exists; it cannot be reset or initialized again')
            obj._write({'schema_version': 1, 'allocation_id': ALLOCATION_ID, 'model': MODEL,
                'service_tier': 'default', 'currency': 'USD', 'limit_nusd': obj.limit_nusd,
                'preflight_reserve_nusd': PREFLIGHT_RESERVE_NUSD,
                'authorized_total_nusd': 10 * NUSD_PER_USD,
                'input_context_tokens': INPUT_CONTEXT_TOKENS,
                'input_nusd_per_token': INPUT_NUSD_PER_TOKEN,
                'output_nusd_per_token': OUTPUT_NUSD_PER_TOKEN,
                'created_at': _now(), 'entries': []})
        return cls(obj.path, limit_usd)

    @contextmanager
    def _locked(self):
        lock_path = self.path.with_name(self.path.name + '.lock')
        if lock_path.is_symlink():
            raise BudgetError('API budget lock must not be a symbolic link')
        descriptor = os.open(lock_path, os.O_CREAT | os.O_RDWR | getattr(os, 'O_NOFOLLOW', 0), 0o600)
        with os.fdopen(descriptor, 'a+') as stream:
            fcntl.flock(stream.fileno(), fcntl.LOCK_EX)
            try:
                yield stream
            finally:
                fcntl.flock(stream.fileno(), fcntl.LOCK_UN)

    def _read(self) -> dict[str, Any]:
        try:
            if self.path.is_symlink():
                raise ValueError
            raw = self.path.read_bytes()
            data = json.loads(raw)
            checkpoint = json.loads(self.path.with_name(self.path.name + '.lock').read_text())
            if not isinstance(data, dict):
                raise ValueError
            if (not isinstance(checkpoint, dict) or checkpoint.get('allocation_id') != ALLOCATION_ID
                    or checkpoint.get('ledger_sha256') != hashlib.sha256(raw).hexdigest()
                    or type(data.get('revision')) is not int or data['revision'] < 1
                    or checkpoint.get('revision') != data['revision']):
                raise ValueError
            expected = {'schema_version': 1, 'allocation_id': ALLOCATION_ID, 'model': MODEL,
                        'service_tier': 'default', 'currency': 'USD', 'limit_nusd': self.limit_nusd,
                        'preflight_reserve_nusd': PREFLIGHT_RESERVE_NUSD,
                        'authorized_total_nusd': 10 * NUSD_PER_USD,
                        'input_context_tokens': INPUT_CONTEXT_TOKENS,
                        'input_nusd_per_token': INPUT_NUSD_PER_TOKEN,
                        'output_nusd_per_token': OUTPUT_NUSD_PER_TOKEN}
            if not isinstance(data, dict) or any(data.get(key) != value or type(data.get(key)) is not type(value)
                                                 for key, value in expected.items()):
                raise ValueError
            if not isinstance(data.get('entries'), list):
                raise ValueError
            identifiers = set()
            for entry in data['entries']:
                if not isinstance(entry, dict) or not re.fullmatch(r'[0-9a-f]{32}', str(entry.get('id', ''))):
                    raise ValueError
                if entry['id'] in identifiers:
                    raise ValueError
                identifiers.add(entry['id'])
                bound = request_bound(entry.get('model'), entry.get('max_completion_tokens'))
                charge = entry.get('charged_nusd')
                if (type(charge) is not int or not 0 <= charge <= bound
                        or entry.get('reserved_nusd') != bound
                        or entry.get('status') not in ('reserved', 'settled', 'uncertain')):
                    raise ValueError
                if entry['status'] in ('reserved', 'uncertain') and charge != bound:
                    raise ValueError
                if entry['status'] == 'settled' and charge != self._actual_charge(entry.get('usage'), entry['max_completion_tokens']):
                    raise ValueError
            if self._charged(data) > self.limit_nusd:
                raise ValueError
            return data
        except (OSError, ValueError, TypeError, KeyError, BudgetError):
            raise BudgetError('API budget ledger is unreadable, inconsistent, or belongs to a different allocation; no request is allowed') from None

    def _write(self, data: dict[str, Any]) -> None:
        data['revision'] = data.get('revision', 0) + 1
        descriptor, temporary = tempfile.mkstemp(prefix=self.path.name + '.', suffix='.tmp', dir=self.path.parent)
        try:
            with os.fdopen(descriptor, 'w') as output:
                json.dump(data, output, indent=2, allow_nan=False)
                output.write('\n')
                output.flush()
                os.fsync(output.fileno())
            os.replace(temporary, self.path)
            # Bind the latest revision to the durable lock inode. A crash between
            # the two writes causes a mismatch and blocks future requests.
            checkpoint = {'schema_version': 1, 'allocation_id': ALLOCATION_ID,
                          'revision': data['revision'],
                          'ledger_sha256': hashlib.sha256(self.path.read_bytes()).hexdigest()}
            with self.path.with_name(self.path.name + '.lock').open('w') as lock:
                json.dump(checkpoint, lock, sort_keys=True)
                lock.write('\n')
                lock.flush()
                os.fsync(lock.fileno())
            directory = os.open(self.path.parent, os.O_RDONLY | getattr(os, 'O_DIRECTORY', 0))
            try:
                os.fsync(directory)
            finally:
                os.close(directory)
        finally:
            if os.path.exists(temporary):
                os.unlink(temporary)

    @staticmethod
    def _charged(data: dict[str, Any]) -> int:
        return sum(entry['charged_nusd'] for entry in data['entries'])

    @staticmethod
    def _actual_charge(usage: Any, completion_limit: int) -> int:
        if not isinstance(usage, dict):
            raise BudgetError('Provider usage is unavailable or malformed')
        counts = [usage.get(key) for key in ('prompt_tokens', 'completion_tokens', 'total_tokens')]
        if (any(type(value) is not int or value < 0 for value in counts)
                or not 1 <= counts[0] <= INPUT_CONTEXT_TOKENS
                or counts[1] > completion_limit or counts[2] != counts[0] + counts[1]):
            raise BudgetError('Provider usage is unavailable or malformed')
        return counts[0] * INPUT_NUSD_PER_TOKEN + counts[1] * OUTPUT_NUSD_PER_TOKEN

    def reserve(self, model: str, max_completion_tokens: int, *, run_id: str = 'agent') -> str:
        bound = request_bound(model, max_completion_tokens)
        if not isinstance(run_id, str) or not re.fullmatch(r'[A-Za-z0-9_-]{1,128}', run_id):
            raise BudgetError('API budget run ID must be a short fixed identifier')
        with self._locked():
            data = self._read()
            if self._charged(data) + bound > self.limit_nusd:
                raise BudgetError('Shared API budget exhausted: insufficient funds for the next worst-case request; study remains incomplete')
            identifier = uuid4().hex
            data['entries'].append({'id': identifier, 'run_id': run_id, 'model': model,
                'max_completion_tokens': max_completion_tokens, 'reserved_nusd': bound,
                'charged_nusd': bound, 'status': 'reserved', 'created_at': _now()})
            self._write(data)
            return identifier

    def uncertain(self, identifier: str, reason: str = 'ambiguous_provider_error') -> None:
        allowed = ('ambiguous_provider_error', 'unverified_usage')
        with self._locked():
            data = self._read()
            matches = [entry for entry in data['entries'] if entry['id'] == identifier]
            if len(matches) != 1 or matches[0]['status'] != 'reserved':
                raise BudgetError('API reservation is missing or already finalized')
            matches[0].update(status='uncertain', reason=reason if reason in allowed else allowed[0], finalized_at=_now())
            self._write(data)

    def settle(self, identifier: str, response: Any) -> dict[str, Any]:
        with self._locked():
            data = self._read()
            matches = [entry for entry in data['entries'] if entry['id'] == identifier]
            if len(matches) != 1 or matches[0]['status'] != 'reserved':
                raise BudgetError('API reservation is missing or already finalized')
            entry = matches[0]
            try:
                if (not isinstance(response, dict) or response.get('model') != MODEL
                        or response.get('service_tier') != 'default' or response.get('error') is not None):
                    raise BudgetError('Provider billing metadata could not be verified')
                usage = response.get('usage')
                charge = self._actual_charge(usage, entry['max_completion_tokens'])
            except BudgetError:
                entry.update(status='uncertain', reason='unverified_usage', finalized_at=_now())
                self._write(data)
                raise BudgetError('Provider usage/model/tier could not be verified; full request reservation retained and study stopped') from None
            entry.update(status='settled', charged_nusd=charge, finalized_at=_now(),
                         usage={key: usage[key] for key in ('prompt_tokens', 'completion_tokens', 'total_tokens')})
            self._write(data)
            return {'reservation_id': identifier, 'charged_usd': _usd(charge),
                    'refunded_usd': _usd(entry['reserved_nusd'] - charge)}

    def snapshot(self) -> dict[str, Any]:
        with self._locked():
            return self._read()

    def summary(self) -> dict[str, Any]:
        data = self.snapshot()
        charged = self._charged(data)
        return {'allocation_id': ALLOCATION_ID, 'model': MODEL, 'service_tier': 'default',
                'limit_usd': _usd(self.limit_nusd), 'charged_usd': _usd(charged),
                'remaining_usd': _usd(self.limit_nusd - charged),
                'preflight_reserve_usd': _usd(PREFLIGHT_RESERVE_NUSD),
                'requests': len(data['entries']),
                'uncertain_requests': sum(entry['status'] != 'settled' for entry in data['entries'])}


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    for name in ('init', 'status'):
        command = sub.add_parser(name)
        command.add_argument('--file', type=Path, required=True)
        command.add_argument('--limit-usd', default=DEFAULT_LIMIT_USD)
    args = parser.parse_args(argv)
    try:
        ledger = ApiBudget.initialize(args.file, args.limit_usd) if args.command == 'init' else ApiBudget(args.file, args.limit_usd)
        print(json.dumps(ledger.summary(), indent=2))
        return 0
    except (BudgetError, OSError):
        print('API budget ledger operation refused; preserve the original allocation and inspect its status')
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
