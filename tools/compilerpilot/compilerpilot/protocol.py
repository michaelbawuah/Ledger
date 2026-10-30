"""Shared validation for the declared throughput measurement work unit."""
from __future__ import annotations

from typing import Any


def validate_throughput_replays(value: Any) -> int:
    if type(value) is not int or not 1 <= value <= 20:
        raise ValueError("throughput_replays must be an integer in 1..20")
    return value


def measurement_replays(result: dict[str, Any]) -> int:
    """Historical records without a replay declaration mean one input replay."""
    if not isinstance(result, dict):
        raise ValueError("Measurement must be an object")
    provenance = result.get("provenance", {})
    if not isinstance(provenance, dict):
        raise ValueError("Measurement provenance must be an object")
    direct = validate_throughput_replays(result["throughput_replays"]) if "throughput_replays" in result else None
    recorded = validate_throughput_replays(provenance["throughput_replays"]) if "throughput_replays" in provenance else None
    if direct is not None and recorded is not None and direct != recorded:
        raise ValueError("Conflicting throughput replay declarations")
    return direct if direct is not None else recorded if recorded is not None else 1


def runner_replays(runner: Any) -> int:
    config = getattr(runner, "config", None)
    return validate_throughput_replays(getattr(config, "throughput_replays", 1))
