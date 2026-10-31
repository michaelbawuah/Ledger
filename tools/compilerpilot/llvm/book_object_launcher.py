#!/usr/bin/env python3
"""Replace only Ledger's book.cpp object inside its original Ninja compile edge.

The normal compilation still produces Ninja's original header dependency file.
The transformed object is installed before this launcher exits, so Ninja records
the final object timestamp and archives/links it through the ordinary build graph.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def save(path, document):
    temporary = path.with_name(path.name + ".tmp")
    with temporary.open("w", encoding="utf-8") as stream:
        json.dump(document, stream, indent=2, sort_keys=True)
        stream.write("\n")
        stream.flush()
        os.fsync(stream.fileno())
    temporary.replace(path)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--book", type=Path, required=True)
    parser.add_argument("--ir", type=Path, required=True)
    parser.add_argument("--record", type=Path, required=True)
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args(argv)
    command = args.command[1:] if args.command[:1] == ["--"] else args.command
    if not command:
        parser.error("original compiler command required")
    book = args.book.resolve()
    # CMake passes exactly one source file to each compiler invocation. Other
    # translation units retain their original argv and exit code without wrapping.
    matches = [arg for arg in command[1:] if not arg.startswith("-")
               and Path(arg).resolve() == book]
    if not matches:
        os.execvp(command[0], command)
    if len(matches) != 1 or command.count("-c") != 1 or command.count("-o") != 1:
        parser.error("expected one book.cpp source, -c and -o")
    output_index = command.index("-o") + 1
    if output_index >= len(command):
        parser.error("missing object output")
    obj = Path(command[output_index]).resolve()
    ir = args.ir.resolve()
    record = args.record.resolve()
    if record.exists() or not ir.is_file() or not record.parent.is_dir():
        parser.error("fresh record and existing transformed IR required")
    ir_hash = sha(ir)
    codegen = [command[0], "-O2", "-Xclang", "-disable-llvm-passes", "-x", "ir",
               "-c", str(ir), "-o", str(obj)]
    document = {"schema_version": 1, "status": "running", "source": str(book),
        "source_sha256": sha(book), "object": str(obj), "ir": str(ir), "ir_sha256": ir_hash,
        "cwd": str(Path.cwd()), "normal_argv": command, "codegen_argv": codegen,
        "ninja_lifecycle": "Both compilations finish before the original compile edge exits; no timestamp manipulation"}
    save(record, document)
    normal = subprocess.run(command)
    document["normal_returncode"] = normal.returncode
    save(record, document)
    if normal.returncode:
        return normal.returncode
    document["normal_object_sha256"] = sha(obj)
    save(record, document)
    transformed = subprocess.run(codegen)
    document["codegen_returncode"] = transformed.returncode
    if transformed.returncode == 0:
        document["transformed_object_sha256"] = sha(obj)
        document["ir_unchanged"] = sha(ir) == ir_hash
        document["status"] = "transformed" if document["ir_unchanged"] else "failed"
    else:
        document["status"] = "failed"
    save(record, document)
    return 0 if document["status"] == "transformed" else (transformed.returncode or 1)


if __name__ == "__main__":
    raise SystemExit(main())
