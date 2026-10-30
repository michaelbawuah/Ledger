"""Local cryptographic round trips use generated test keys and fake credentials."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

import pytest
import yaml

from compilerpilot import codespace_access as access

FAKE_KEY = 'sk-test-only-never-a-real-provider-credential'


@pytest.fixture(scope='module')
def key_pairs(tmp_path_factory):
    root = tmp_path_factory.mktemp('recipient-keys')
    keys = {}
    for name, bits in (('valid', 4096), ('small', 2048)):
        private = root / (name + '.pem')
        subprocess.run(['openssl', 'genpkey', '-algorithm', 'RSA',
                        '-pkeyopt', f'rsa_keygen_bits:{bits}', '-out', str(private)],
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        der = subprocess.run(['openssl', 'pkey', '-in', str(private), '-pubout', '-outform', 'DER'],
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True).stdout
        keys[name] = (private, der)
    return keys


def fingerprint(der):
    return hashlib.sha256(der).hexdigest()


def test_envelope_round_trip_has_only_ciphertext_and_whitelisted_metadata(tmp_path, key_pairs, capsys):
    private, public = key_pairs['valid']
    output = tmp_path / 'envelope'
    report = access.create_envelope(public.hex(), fingerprint(public), output,
                                    secret_loader=lambda: FAKE_KEY)
    assert report['status'] == 'sealed'
    assert set(path.name for path in output.iterdir()) == {'openai-key.enc', 'envelope.json'}
    ciphertext = (output / 'openai-key.enc').read_bytes()
    assert len(ciphertext) == report['ciphertext_bytes'] == 512
    assert hashlib.sha256(ciphertext).hexdigest() == report['ciphertext_sha256']
    assert report['public_key_sha256'] == fingerprint(public)
    plaintext = subprocess.run(['openssl', 'pkeyutl', '-decrypt', '-inkey', str(private),
                                '-pkeyopt', 'rsa_padding_mode:oaep', '-pkeyopt', 'rsa_oaep_md:sha256',
                                '-pkeyopt', 'rsa_mgf1_md:sha256'], input=ciphertext,
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True).stdout
    assert plaintext == FAKE_KEY.encode()
    assert FAKE_KEY.encode() not in ciphertext
    assert FAKE_KEY not in json.dumps(report) + (output / 'envelope.json').read_text()
    assert capsys.readouterr() == ('', '')


def test_plaintext_is_stdin_only_and_never_in_child_environment(tmp_path, key_pairs, monkeypatch):
    _, public = key_pairs['valid']
    original = access.subprocess.run
    calls = []
    monkeypatch.setenv('OPENAI_API_KEY', FAKE_KEY)
    def inspect(command, **options):
        calls.append(command)
        assert options['input'] == FAKE_KEY.encode()
        assert FAKE_KEY not in json.dumps(command)
        assert 'OPENAI_API_KEY' not in options['env']
        assert FAKE_KEY not in json.dumps(options['env'])
        assert options['stdout'] == options['stderr'] == subprocess.PIPE
        assert options['timeout'] == 30 and options['check'] is False
        assert Path(command[command.index('-inkey') + 1]).read_bytes() == public
        return original(command, **options)
    monkeypatch.setattr(access.subprocess, 'run', inspect)
    report = access.create_envelope(public.hex(), fingerprint(public), tmp_path / 'envelope')
    assert report['status'] == 'sealed' and len(calls) == 1


@pytest.mark.parametrize('kind', ['hex', 'odd_hex', 'whitespace', 'trailing_der', 'indefinite_der',
                                 'fingerprint', 'small_key', 'wrong_algorithm', 'wrong_exponent'])
def test_untrusted_public_inputs_are_rejected_before_reading_secret(tmp_path, key_pairs, kind):
    _, der = key_pairs['valid']
    supplied = der.hex()
    digest = fingerprint(der)
    if kind == 'hex': supplied = 'this is not hex'
    elif kind == 'odd_hex': supplied = supplied[:-1]
    elif kind == 'whitespace': supplied += '\n'
    elif kind == 'fingerprint': digest = '0' * 64
    else:
        if kind == 'small_key': der = key_pairs['small'][1]
        elif kind == 'trailing_der': der += b'\0'
        elif kind == 'indefinite_der': der = der[:1] + b'\x80' + der[2:]
        elif kind == 'wrong_algorithm':
            oid = bytes.fromhex('06092a864886f70d010101')
            der = der.replace(oid, bytes.fromhex('06092a864886f70d01010a'), 1)
        elif kind == 'wrong_exponent': der = der[:-1] + b'\x03'
        supplied, digest = der.hex(), fingerprint(der)
    report = access.create_envelope(supplied, digest, tmp_path / kind,
                                    secret_loader=lambda: pytest.fail('No secret lookup for invalid public key'))
    assert report['status'] != 'sealed'
    assert not (tmp_path / kind / 'openai-key.enc').exists()


@pytest.mark.parametrize('value', [None, '', 'x' * 447, 'sk-test\nunsafe', 'sk-test\0unsafe'])
def test_missing_or_invalid_credential_never_reaches_openssl(tmp_path, key_pairs, monkeypatch, value):
    _, public = key_pairs['valid']
    monkeypatch.setattr(access, '_encrypt', lambda *args: pytest.fail('No encryption for invalid credential'))
    report = access.create_envelope(public.hex(), fingerprint(public), tmp_path / 'envelope',
                                    secret_loader=lambda: value)
    assert report['status'] == 'credential_unavailable'


def test_openssl_failure_never_emits_secret_or_free_form_error(tmp_path, key_pairs, monkeypatch, capsys):
    _, public = key_pairs['valid']
    monkeypatch.setenv('CODESPACE_PUBLIC_KEY_DER_HEX', public.hex())
    monkeypatch.setenv('CODESPACE_PUBLIC_KEY_SHA256', fingerprint(public))
    monkeypatch.setenv('OPENAI_API_KEY', FAKE_KEY)
    calls = []
    def failed(command, **options):
        calls.append(command)
        return subprocess.CompletedProcess(command, 1, b'', FAKE_KEY.encode())
    monkeypatch.setattr(access.subprocess, 'run', failed)
    output = tmp_path / 'envelope'
    assert access.main(['--output', str(output)]) == 1
    stdout, stderr = capsys.readouterr()
    assert len(calls) == 1 and not stderr
    assert json.loads(stdout)['status'] == 'encryption_failed'
    assert FAKE_KEY not in stdout + (output / 'envelope.json').read_text()
    assert not (output / 'openai-key.enc').exists()


def test_existing_envelope_is_not_overwritten(tmp_path, key_pairs):
    _, public = key_pairs['valid']
    output = tmp_path / 'envelope'
    output.mkdir()
    (output / 'marker').write_text('preserve')
    result = access.create_envelope(public.hex(), fingerprint(public), output,
                                    secret_loader=lambda: pytest.fail('No secret lookup on existing output'))
    assert result['status'] == 'output_unavailable'
    assert (output / 'marker').read_text() == 'preserve'


def recipient_files(tmp_path, key_pairs):
    original, public = key_pairs['valid']
    private = tmp_path / 'private.pem'
    shutil.copyfile(original, private)
    private.chmod(0o600)
    public_path = tmp_path / 'public.der'
    public_path.write_bytes(public)
    output = tmp_path / 'envelope'
    assert access.create_envelope(public.hex(), fingerprint(public), output,
                                  secret_loader=lambda: FAKE_KEY)['status'] == 'sealed'
    return private, public_path, output


def test_receiver_passes_key_only_in_fixed_study_child_environment(tmp_path, key_pairs, monkeypatch, capsys):
    private, public, output = recipient_files(tmp_path, key_pairs)
    original = access.subprocess.run
    study_calls = []
    github_tokens = {name: f'fake-repository-token-{index}' for index, name in enumerate(
        ('GH_TOKEN', 'GITHUB_TOKEN', 'GH_ENTERPRISE_TOKEN'))}
    for name, value in github_tokens.items():
        monkeypatch.setenv(name, value)
    def inspect(command, **options):
        assert FAKE_KEY not in json.dumps(command)
        assert all(value not in json.dumps(command) for value in github_tokens.values())
        if command[1] == 'pkeyutl':
            assert 'OPENAI_API_KEY' not in options['env']
            assert not set(github_tokens) & options['env'].keys()
            return original(command, **options)
        study_calls.append(command)
        assert Path(command[1]) == access._PROJECT / 'scripts/run_study.py'
        assert command[2:] == ['--phase', 'study', '--study-id', 'qualified']
        assert options['env']['OPENAI_API_KEY'] == FAKE_KEY
        assert not set(github_tokens) & options['env'].keys()
        assert all(value not in json.dumps(options['env']) for value in github_tokens.values())
        assert 'shell' not in options and options['cwd'] == access._PROJECT
        return subprocess.CompletedProcess(command, 7)
    monkeypatch.setattr(access.subprocess, 'run', inspect)
    assert access.unseal_and_launch(private, public, output, ['--phase', 'study', '--study-id', 'qualified']) == 7
    assert len(study_calls) == 1 and not private.exists() and not (output / 'openai-key.enc').exists()
    stdout, stderr = capsys.readouterr()
    assert stdout == stderr == ''
    assert all(value not in stdout + stderr for value in (FAKE_KEY, *github_tokens.values()))


@pytest.mark.parametrize('tamper', ['ciphertext', 'fingerprint', 'private_mode'])
def test_receiver_rejects_tampering_before_launch(tmp_path, key_pairs, monkeypatch, capsys, tamper):
    private, public, output = recipient_files(tmp_path, key_pairs)
    if tamper == 'ciphertext':
        (output / 'openai-key.enc').write_bytes(b'\0' * 512)
    elif tamper == 'fingerprint':
        path = output / 'envelope.json'
        metadata = json.loads(path.read_text())
        metadata['public_key_sha256'] = '0' * 64
        path.write_text(json.dumps(metadata))
    else:
        private.chmod(0o644)
    monkeypatch.setattr(access.subprocess, 'run', lambda *args, **kwargs: pytest.fail('Reject before decrypt or launch'))
    assert access.receive_main(['--private-key', str(private), '--public-der', str(public),
                                '--envelope', str(output), '--', '--phase', 'study']) == 1
    stdout, stderr = capsys.readouterr()
    assert FAKE_KEY not in stdout + stderr and 'Traceback' not in stdout + stderr


@pytest.mark.parametrize('field,value', [
    ('schema_version', True), ('rsa_bits', True), ('ciphertext_bytes', True),
    ('schema_version', 1.0), ('rsa_bits', 4096.0), ('ciphertext_bytes', 512.0),
])
def test_receiver_numeric_metadata_requires_exact_integers(tmp_path, key_pairs, monkeypatch, field, value):
    private, public, output = recipient_files(tmp_path, key_pairs)
    path = output / 'envelope.json'
    metadata = json.loads(path.read_text())
    metadata[field] = value
    path.write_text(json.dumps(metadata))
    monkeypatch.setattr(access.subprocess, 'run', lambda *args, **kwargs: pytest.fail('Reject before decrypt or launch'))
    with pytest.raises(access.EnvelopeError, match='invalid_envelope'):
        access.unseal_and_launch(private, public, output, ['--phase', 'study'])


def test_workflow_is_owner_manual_main_only_and_has_no_plaintext_shell_interpolation():
    workflow = Path(__file__).resolve().parents[3] / '.github/workflows/compilerpilot-codespace-access.yml'
    value = yaml.load(workflow.read_text(), Loader=yaml.BaseLoader)
    assert set(value['on']) == {'workflow_dispatch'}
    assert set(value['on']['workflow_dispatch']['inputs']) == {'public_key_der_hex', 'public_key_sha256'}
    assert value['permissions'] == {'contents': 'read'}
    job = value['jobs']['seal']
    assert job['if'] == "github.ref == 'refs/heads/main' && github.actor == github.repository_owner"
    step = next(step for step in job['steps'] if 'run' in step)
    assert '${{' not in step['run'] and 'OPENAI_API_KEY' not in step['run']
    artifact = next(step for step in job['steps'] if 'upload-artifact' in step.get('uses', ''))
    assert artifact['with']['retention-days'] == '1'
    assert len(artifact['with']['path'].splitlines()) == 2
    assert artifact['with']['path'].splitlines()[0].endswith('/openai-key.enc')
    assert artifact['with']['path'].splitlines()[1].endswith('/envelope.json')
