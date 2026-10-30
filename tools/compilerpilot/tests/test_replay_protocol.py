import pytest

from compilerpilot.protocol import measurement_replays, validate_throughput_replays


@pytest.mark.parametrize('value', [0, 21, True, False, 1.5, '5', None])
def test_replay_count_rejects_unsafe_or_ambiguous_values(value):
    with pytest.raises(ValueError, match='integer in 1..20'):
        validate_throughput_replays(value)


def test_replay_protocol_has_explicit_bounds_and_legacy_default():
    assert validate_throughput_replays(1) == 1
    assert validate_throughput_replays(20) == 20
    assert measurement_replays({}) == 1
    assert measurement_replays({'throughput_replays': 5}) == 5
    assert measurement_replays({'provenance': {'throughput_replays': 5}}) == 5
    assert measurement_replays({'throughput_replays': 5, 'provenance': {'throughput_replays': 5}}) == 5


@pytest.mark.parametrize('record', [
    {'throughput_replays': 5, 'provenance': {'throughput_replays': 1}},
    {'throughput_replays': None},
    {'provenance': {'throughput_replays': True}},
    {'provenance': []},
])
def test_conflicting_or_invalid_measurement_protocol_is_not_legacy(record):
    with pytest.raises(ValueError):
        measurement_replays(record)
