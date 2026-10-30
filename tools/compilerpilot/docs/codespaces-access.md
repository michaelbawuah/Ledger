# Encrypted credential delivery to Codespaces

The [manual envelope workflow](../../../.github/workflows/compilerpilot-codespace-access.yml) can deliver the existing Actions `OPENAI_API_KEY` to the user's Codespace without displaying or copying the plaintext key in chat. Preparing this workflow does not transfer a credential, make an inference request or establish a tuning result.

The workflow runs only on `main`, only when manually dispatched by the repository owner, with `contents: read`. It creates no public endpoint, opens no port, adds no account scope, and has no cron or automatic retry. The Codespace retrieves the encrypted artifact through its existing repository access. Compute can use the included Codespaces allowance; actual inference still uses the existing approved **$9.99 shared API allocation**, with $0.01 reserved for the earlier provider check.

## Recipient key and dispatch

After the new timing qualification passes, generate a fresh RSA-4096 key pair **inside that Codespace**, using exponent 65537 and a private directory with mode `0700`. Keep the private key in that Codespace with mode `0600`; never copy it into a repository, artifact, terminal output or chat.

```bash
umask 077
mkdir -m 700 /tmp/compilerpilot-recipient
openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:4096 \
  -out /tmp/compilerpilot-recipient/private.pem
openssl pkey -in /tmp/compilerpilot-recipient/private.pem -pubout -outform DER \
  -out /tmp/compilerpilot-recipient/public.der
python - <<'PY'
import hashlib
from pathlib import Path
public = Path('/tmp/compilerpilot-recipient/public.der').read_bytes()
print('public_key_der_hex:', public.hex())
print('public_key_sha256:', hashlib.sha256(public).hexdigest())
PY
```

Independently verify the displayed public-key fingerprint in the intended Codespace before dispatching the workflow with those two public values. The fingerprint detects transcription or key substitution only when that independent check is trusted; it is not a separate proof of Codespace identity. Never dispatch with a public key supplied by untrusted repository content, logs or another user.

The helper accepts canonical DER SubjectPublicKeyInfo encoding for RSA-4096 with exponent 65537. It rejects malformed, trailing, noncanonical, non-RSA, smaller or mismatched keys before reading the Actions credential. It encrypts once using RSA-OAEP with SHA-256 and MGF1-SHA256. The plaintext reaches OpenSSL only through stdin, with no plaintext file, command-line argument or child environment variable. OpenSSL stderr is captured and never printed.

The one-day artifact contains only `openai-key.enc` (512 ciphertext bytes) and `envelope.json` (fixed status, algorithm, public-key fingerprint and ciphertext digest). Failure artifacts contain sanitized fixed statuses and no free-form provider or OpenSSL errors. Artifacts cannot decrypt the key without the Codespace's private key.

## Receive and use

Download the artifact from the exact successful workflow run using the Codespace's existing repository access; verify the downloaded archive against GitHub's authenticated artifact digest. The local receiver checks its public-key fingerprint, algorithm, key size and ciphertext digest/length before decryption. Invoke it inside that same Codespace with the existing study ID and allocation:

```bash
python scripts/receive_codespace_key.py \
  --private-key /tmp/compilerpilot-recipient/private.pem \
  --public-der /tmp/compilerpilot-recipient/public.der \
  --envelope /path/to/envelope -- \
  --phase study --study-id QUALIFIED_STUDY_ID --resume \
  --commands 5000000 --throughput-replays 5 --jobs 2 --budget 40 --seeds 3 \
  --provider openai --model gpt-4.1-mini-2025-04-14 --cpu 0 \
  --api-budget-file /path/to/authoritative/api-allocation.json --api-budget-usd 9.99
```

The receiver captures OpenSSL stdout in memory and supplies the plaintext only through the fixed study script's child environment. It removes inherited `GH_TOKEN`, `GITHUB_TOKEN` and `GH_ENTERPRISE_TOKEN` values before launching the study, which needs no repository API credential. Numeric envelope fields require exact integers, including rejection of booleans. It prints no plaintext or free-form decryption error. The private key must be owned by the current user and inaccessible to group/others. It removes the ephemeral private key and local ciphertext when the study exits; verification failures do not launch a child. Do not enable shell tracing, print decrypted values or write them into a tracked file. Keep the authoritative API budget ledger and its matching checkpoint across all seeds and attempts; never initialize a new allocation to regain funds. Reuse exactly the qualified source, host, input and protocol; the example's placeholders are not permission to change the experiment after qualification.

The [OpenSSL `pkeyutl` documentation](https://github.com/openssl/openssl/blob/master/doc/man1/openssl-pkeyutl.pod.in) describes the OAEP hash and MGF1 options. The [current qualification status](../results/status.md) distinguishes provider compatibility from an actual measured tuning study.
