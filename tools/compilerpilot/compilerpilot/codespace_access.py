"""Seal one Actions credential for a Codespace-owned ephemeral RSA key.

This module never calls a model or opens a network connection. The credential
reaches OpenSSL only on stdin; child environment, argv and output logs omit it.
"""
from __future__ import annotations

import argparse
import hashlib
import hmac
import json
import os
from pathlib import Path
import re
import shutil
import stat
import subprocess
import sys
import tempfile
from typing import Callable

_RSA_ALGORITHM = bytes.fromhex('06092a864886f70d0101010500')
_KEY_BITS = 4096
_CIPHERTEXT_BYTES = _KEY_BITS // 8
_MAX_SECRET_BYTES = _CIPHERTEXT_BYTES - 2 * hashlib.sha256().digest_size - 2
_PROJECT = Path(__file__).resolve().parents[1]
_ERROR_STATUSES = frozenset({'invalid_public_key', 'invalid_fingerprint', 'fingerprint_mismatch',
                           'unsupported_public_key', 'encryption_unavailable', 'encryption_failed',
                           'credential_unavailable'})


class EnvelopeError(ValueError):
    """Only fixed local status codes may be exposed to logs or artifacts."""


def _tlv(data: bytes, start: int, tag: int) -> tuple[bytes, int]:
    if start + 2 > len(data) or data[start] != tag:
        raise EnvelopeError('invalid_public_key')
    marker = data[start + 1]
    offset = start + 2
    if marker < 128:
        size = marker
    else:
        count = marker & 127
        if (not 1 <= count <= 4 or offset + count > len(data)
                or data[offset] == 0):
            raise EnvelopeError('invalid_public_key')
        size = int.from_bytes(data[offset:offset + count], 'big')
        offset += count
        if size < 128:
            raise EnvelopeError('invalid_public_key')
    end = offset + size
    if end > len(data):
        raise EnvelopeError('invalid_public_key')
    return data[offset:end], end


def _single(data: bytes, tag: int) -> bytes:
    value, end = _tlv(data, 0, tag)
    if end != len(data):
        raise EnvelopeError('invalid_public_key')
    return value


def _positive_integer(encoded: bytes) -> int:
    if (not encoded or encoded[0] & 128
            or (len(encoded) > 1 and encoded[0] == 0 and encoded[1] < 128)):
        raise EnvelopeError('invalid_public_key')
    return int.from_bytes(encoded, 'big')


def validate_public_key(public_hex: str, fingerprint: str) -> tuple[bytes, str]:
    """Accept one canonical DER SubjectPublicKeyInfo RSA-4096/e=65537 key."""
    if (not isinstance(public_hex, str) or not re.fullmatch(r'[0-9A-Fa-f]{2,2048}', public_hex)
            or len(public_hex) % 2):
        raise EnvelopeError('invalid_public_key')
    if not isinstance(fingerprint, str) or not re.fullmatch(r'[0-9A-Fa-f]{64}', fingerprint):
        raise EnvelopeError('invalid_fingerprint')
    der = bytes.fromhex(public_hex)
    digest = hashlib.sha256(der).hexdigest()
    if not hmac.compare_digest(digest, fingerprint.lower()):
        raise EnvelopeError('fingerprint_mismatch')
    spki = _single(der, 0x30)
    algorithm, offset = _tlv(spki, 0, 0x30)
    if algorithm != _RSA_ALGORITHM:
        raise EnvelopeError('unsupported_public_key')
    bits, end = _tlv(spki, offset, 0x03)
    if end != len(spki) or not bits or bits[0] != 0:
        raise EnvelopeError('invalid_public_key')
    rsa = _single(bits[1:], 0x30)
    modulus, offset = _tlv(rsa, 0, 0x02)
    exponent, end = _tlv(rsa, offset, 0x02)
    if end != len(rsa):
        raise EnvelopeError('invalid_public_key')
    n, e = _positive_integer(modulus), _positive_integer(exponent)
    if n.bit_length() != _KEY_BITS or n % 2 != 1 or e != 65537:
        raise EnvelopeError('unsupported_public_key')
    return der, digest


def _encrypt(der: bytes, secret: bytes) -> bytes:
    executable = shutil.which('openssl')
    if not executable:
        raise EnvelopeError('encryption_unavailable')
    with tempfile.TemporaryDirectory(prefix='compilerpilot-public-key-') as temporary:
        public_path = Path(temporary) / 'recipient.der'
        public_path.write_bytes(der)
        # Do not let the child inherit the plaintext credential from Actions env.
        child_env = {'PATH': os.environ.get('PATH', ''), 'LC_ALL': 'C'}
        command = [executable, 'pkeyutl', '-encrypt', '-pubin', '-keyform', 'DER',
                   '-inkey', str(public_path), '-pkeyopt', 'rsa_padding_mode:oaep',
                   '-pkeyopt', 'rsa_oaep_md:sha256', '-pkeyopt', 'rsa_mgf1_md:sha256']
        try:
            result = subprocess.run(command, input=secret, stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE, env=child_env,
                                    timeout=30, check=False)
        except (OSError, subprocess.SubprocessError):
            raise EnvelopeError('encryption_failed') from None
    if (result.returncode != 0 or len(result.stdout) != _CIPHERTEXT_BYTES
            or secret in result.stdout):
        raise EnvelopeError('encryption_failed')
    return result.stdout


def create_envelope(public_hex: str, fingerprint: str, output: Path, *,
                    secret_loader: Callable[[], str | None] | None = None) -> dict:
    """Write only a 512-byte ciphertext and fixed, non-secret metadata.

    Invalid public input is rejected before the credential is read. Existing
    output directories are never overwritten, including after failed attempts.
    """
    report = {'schema_version': 1, 'status': 'not_started'}
    output = Path(output)
    try:
        output.mkdir(parents=True, mode=0o700, exist_ok=False)
    except OSError:
        return {**report, 'status': 'output_unavailable'}
    try:
        der, digest = validate_public_key(public_hex, fingerprint)
        value = (secret_loader or (lambda: os.environ.get('OPENAI_API_KEY')))()
        if not isinstance(value, str) or not value:
            raise EnvelopeError('credential_unavailable')
        secret = value.encode('utf-8')
        if len(secret) > _MAX_SECRET_BYTES or any(byte in secret for byte in (b'\0', b'\r', b'\n')):
            raise EnvelopeError('credential_unavailable')
        ciphertext = _encrypt(der, secret)
        descriptor = os.open(output / 'openai-key.enc', os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
        with os.fdopen(descriptor, 'wb') as encrypted:
            encrypted.write(ciphertext)
        report = {'schema_version': 1, 'status': 'sealed',
                  'algorithm': 'RSA-OAEP-SHA256', 'mgf1_digest': 'SHA256',
                  'rsa_bits': _KEY_BITS, 'public_key_sha256': digest,
                  'ciphertext_bytes': len(ciphertext),
                  'ciphertext_sha256': hashlib.sha256(ciphertext).hexdigest()}
    except EnvelopeError as error:
        report['status'] = str(error) if str(error) in _ERROR_STATUSES else 'envelope_failed'
    except Exception:
        report['status'] = 'envelope_failed'
    try:
        (output / 'envelope.json').write_text(json.dumps(report, indent=2) + '\n')
    except OSError:
        return {'schema_version': 1, 'status': 'output_unavailable'}
    return report


def unseal_and_launch(private_key: Path, public_der: Path, envelope: Path,
                      study_args: list[str]) -> int:
    """Capture the decrypted key in memory and launch only the trusted study CLI."""
    private_key, public_der, envelope = Path(private_key), Path(public_der), Path(envelope)
    executable = shutil.which('openssl')
    if not executable:
        raise EnvelopeError('decryption_unavailable')
    try:
        properties = private_key.stat()
        if (private_key.is_symlink() or not stat.S_ISREG(properties.st_mode)
                or stat.S_IMODE(properties.st_mode) & 0o077
                or properties.st_uid != os.getuid() or not 1 <= properties.st_size <= 16_384):
            raise EnvelopeError('private_key_unavailable')
        metadata_file, ciphertext_file = envelope / 'envelope.json', envelope / 'openai-key.enc'
        if metadata_file.stat().st_size > 4096 or ciphertext_file.stat().st_size != _CIPHERTEXT_BYTES:
            raise EnvelopeError('invalid_envelope')
        metadata = json.loads(metadata_file.read_text())
        required = {'schema_version', 'status', 'algorithm', 'mgf1_digest', 'rsa_bits',
                    'public_key_sha256', 'ciphertext_bytes', 'ciphertext_sha256'}
        if (not isinstance(metadata, dict) or set(metadata) != required
                or any(type(metadata[field]) is not int
                       for field in ('schema_version', 'rsa_bits', 'ciphertext_bytes'))
                or metadata['schema_version'] != 1 or metadata['status'] != 'sealed'
                or metadata['algorithm'] != 'RSA-OAEP-SHA256' or metadata['mgf1_digest'] != 'SHA256'
                or metadata['rsa_bits'] != _KEY_BITS or metadata['ciphertext_bytes'] != _CIPHERTEXT_BYTES):
            raise EnvelopeError('invalid_envelope')
        if public_der.stat().st_size > 1024:
            raise EnvelopeError('invalid_public_key')
        validate_public_key(public_der.read_bytes().hex(), metadata['public_key_sha256'])
        ciphertext = ciphertext_file.read_bytes()
        if (not isinstance(metadata['ciphertext_sha256'], str)
                or not hmac.compare_digest(hashlib.sha256(ciphertext).hexdigest(), metadata['ciphertext_sha256'])):
            raise EnvelopeError('invalid_envelope')
        result = subprocess.run([executable, 'pkeyutl', '-decrypt', '-inkey', str(private_key),
                                 '-passin', 'pass:', '-in', str(ciphertext_file),
                                 '-pkeyopt', 'rsa_padding_mode:oaep',
                                 '-pkeyopt', 'rsa_oaep_md:sha256', '-pkeyopt', 'rsa_mgf1_md:sha256'],
                                stdin=subprocess.DEVNULL, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                env={'PATH': os.environ.get('PATH', ''), 'LC_ALL': 'C'}, timeout=30, check=False)
        secret = result.stdout
        if (result.returncode != 0 or not 1 <= len(secret) <= _MAX_SECRET_BYTES
                or any(byte in secret for byte in (b'\0', b'\r', b'\n'))):
            raise EnvelopeError('decryption_failed')
        environment = dict(os.environ)
        for name in ('GH_TOKEN', 'GITHUB_TOKEN', 'GH_ENTERPRISE_TOKEN'):
            environment.pop(name, None)
        environment['OPENAI_API_KEY'] = secret.decode('ascii')
    except EnvelopeError:
        raise
    except Exception:
        raise EnvelopeError('invalid_envelope') from None
    # The key is not part of argv, shell syntax, stdout, a temp file or a trace.
    # Fixed executable and script prevent accidental launch of an `env` dumper.
    command = [sys.executable, str(_PROJECT / 'scripts' / 'run_study.py'), *study_args]
    try:
        return subprocess.run(command, cwd=_PROJECT, env=environment, check=False).returncode
    finally:
        private_key.unlink(missing_ok=True)
        ciphertext_file.unlink(missing_ok=True)


def receive_main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description='Decrypt locally and launch the fixed study script without displaying the key')
    parser.add_argument('--private-key', type=Path, required=True)
    parser.add_argument('--public-der', type=Path, required=True)
    parser.add_argument('--envelope', type=Path, required=True)
    parser.add_argument('study_args', nargs=argparse.REMAINDER)
    args = parser.parse_args(argv)
    forwarded = args.study_args[1:] if args.study_args[:1] == ['--'] else args.study_args
    if not forwarded:
        print('Study launch refused: study arguments are required')
        return 1
    try:
        return unseal_and_launch(args.private_key, args.public_der, args.envelope, forwarded)
    except Exception:
        print('Study launch refused: envelope, private key or local launch could not be verified')
        return 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(argv)
    report = create_envelope(os.environ.get('CODESPACE_PUBLIC_KEY_DER_HEX', ''),
                             os.environ.get('CODESPACE_PUBLIC_KEY_SHA256', ''), args.output)
    print(json.dumps(report, sort_keys=True))
    return 0 if report['status'] == 'sealed' else 1


if __name__ == '__main__':
    raise SystemExit(main())
