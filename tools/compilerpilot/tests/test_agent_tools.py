import json
import pytest
from compilerpilot.space import Candidate, list_knobs
from compilerpilot.tools import ToolDispatcher
from compilerpilot.strategies.agent import AgentRunner


class Harness:
    def __init__(self):
        self.events = []
        self.built = {}
        self.measured = set()

    def trace(self, event, data):
        self.events.append((event, data))

    def list_knobs(self):
        return list_knobs()

    def query_history(self, top_k=10, sort_by="throughput"):
        return []

    def build(self, candidate):
        build_id = Candidate.from_dict(candidate).hash()
        self.built[build_id] = candidate
        return {"build_id": build_id, "success": True}

    def run_benchmark(self, build_id):
        if build_id not in self.built:
            raise ValueError("Unknown build")
        self.measured.add(build_id)
        return {"correctness": True, "throughput": 123.0}

    def finish(self, recommendation, rationale):
        if recommendation not in self.measured:
            raise ValueError("Recommendation has not passed correctness")
        return {"build_id": recommendation, "rationale": rationale}


def test_tool_schema_and_local_guardrails():
    harness = Harness()
    dispatcher = ToolDispatcher(harness, budget=1)
    assert len(dispatcher.definitions()) == 8
    assert all(item["function"]["strict"] for item in dispatcher.definitions())
    candidate = Candidate().to_dict()
    for bad in ({**candidate, "compiler": "g++; rm -rf /"},
                {**candidate, "flags": "-Ofast"}, {**candidate, "lto": 1}):
        with pytest.raises(ValueError):
            dispatcher.dispatch("build", {"candidate": bad})
    assert dispatcher.builds_used == 0
    with pytest.raises(ValueError, match="Unknown tool"):
        dispatcher.dispatch("shell", {"command": "true"})
    with pytest.raises(ValueError, match="invalid identifier"):
        dispatcher.dispatch("run_benchmark", {"build_id": "../../etc/passwd"})
    dispatcher.dispatch("build", {"candidate": candidate})
    with pytest.raises(ValueError, match="Duplicate"):
        dispatcher.dispatch("build", {"candidate": candidate})
    assert dispatcher.builds_used == 1
    with pytest.raises(ValueError, match="exhausted"):
        dispatcher.dispatch("build", {"candidate": Candidate(opt="O2").to_dict()})
    assert dispatcher.builds_used == 1


def test_finish_delegates_correctness_and_closes_run():
    harness = Harness()
    dispatcher = ToolDispatcher(harness)
    build_id = dispatcher.dispatch("build", {"candidate": Candidate().to_dict()})["build_id"]
    with pytest.raises(ValueError, match="correctness"):
        dispatcher.dispatch("finish", {"recommendation": build_id, "rationale": "fast"})
    assert not dispatcher.finished
    dispatcher.dispatch("run_benchmark", {"build_id": build_id})
    dispatcher.dispatch("finish", {"recommendation": build_id, "rationale": "measured"})
    with pytest.raises(ValueError, match="finished"):
        dispatcher.dispatch("list_knobs", {})


def _openai_call(name, arguments, number=1):
    return {"choices": [{"message": {"role": "assistant", "content": "Test hypothesis.",
        "tool_calls": [{"id": f"call-{number}", "type": "function", "function": {
            "name": name, "arguments": json.dumps(arguments)}}]}}]}


def test_openai_protocol_real_tool_loop_and_secret_redaction():
    harness = Harness()
    candidate = Candidate().to_dict()
    build_id = Candidate().hash()
    replies = iter([_openai_call("build", {"candidate": candidate}),
                    _openai_call("run_benchmark", {"build_id": build_id}, 2),
                    _openai_call("finish", {"recommendation": build_id,
                                           "rationale": "measured with sk-test-secret"}, 3)])
    requests = []
    def transport(url, headers, payload, timeout):
        requests.append(json.loads(json.dumps(payload)))
        assert headers["Authorization"] == "Bearer sk-test-secret"
        return next(replies)
    result = AgentRunner(harness, model="fixed-model", api_key="sk-test-secret",
                         transport=transport).run(1)
    assert result["status"] == "finished"
    assert result["builds"] == 1 and result["calls"] == 3
    assert requests[0]["temperature"] == 0 and requests[0]["seed"] == 0
    assert requests[1]["messages"][-2]["role"] == "tool"
    assert "sk-test-secret" not in json.dumps(harness.events)
    assert "[REDACTED]" in json.dumps(harness.events)


def test_budget_updates_do_not_duplicate_history_or_drop_tool_evidence():
    class EvidenceHarness(Harness):
        def __init__(self):
            super().__init__()
            self.history_requests = 0

        def query_history(self, top_k=10, sort_by="throughput"):
            self.history_requests += 1
            return {"history_response": self.history_requests, "raw_values": [37, 39, 41]}

        def run_benchmark(self, build_id):
            return {**super().run_benchmark(build_id),
                    "full_evidence": {"replay_durations": [37, 39, 41]}}

    harness = EvidenceHarness()
    build_id = Candidate().hash()
    replies = iter([
        _openai_call("build", {"candidate": Candidate().to_dict()}),
        _openai_call("run_benchmark", {"build_id": build_id}, 2),
        _openai_call("query_history", {"top_k": 10, "sort_by": "throughput"}, 3),
        _openai_call("finish", {"recommendation": build_id, "rationale": "measured"}, 4),
    ])
    requests = []

    def transport(url, headers, payload, timeout):
        requests.append(json.loads(json.dumps(payload)))
        return next(replies)

    result = AgentRunner(harness, model="fixed-model", api_key="test",
                         transport=transport).run(1)
    assert result["status"] == "finished" and result["calls"] == 4
    # Initial state and an explicit history tool remain available. Automatic
    # follow-ups carry only current budget and instruction, even after queries.
    assert harness.history_requests == 2
    assert json.loads(requests[0]["messages"][1]["content"])["history"]["history_response"] == 1
    for request in requests[1:]:
        update = json.loads(request["messages"][-1]["content"])
        assert set(update) == {"budget_remaining", "instruction", "pending_build_ids"}
        assert update["budget_remaining"] == 0
        assert update["pending_build_ids"] == []
        assert request["messages"][-2]["role"] == "tool"
    measured = {"correctness": True, "throughput": 123.0,
                "full_evidence": {"replay_durations": [37, 39, 41]}}
    assert json.loads(requests[2]["messages"][-2]["content"]) == measured
    assert json.loads(requests[3]["messages"][-2]["content"]) == {
        "history_response": 2, "raw_values": [37, 39, 41]}
    assert any(event == "tool_result" and data["result"] == measured
               for event, data in harness.events)


def test_noise_checkpoint_stops_remaining_tools_and_provider_requests():
    class DriftingHarness(Harness):
        noise_ok = True
        builds_used = 1

        def __init__(self):
            super().__init__()
            self.knob_reads = 0

        def list_knobs(self):
            self.knob_reads += 1
            return super().list_knobs()

        def run_benchmark(self, build_id):
            measured = super().run_benchmark(build_id)
            self.noise_ok = False
            return {**measured, "measurement_valid": False, "status": "discarded_drift"}

    harness = DriftingHarness()
    build_id = Candidate().hash()
    harness.built[build_id] = Candidate().to_dict()
    reply = _openai_call("run_benchmark", {"build_id": build_id})
    reply["choices"][0]["message"]["tool_calls"].extend(
        _openai_call("list_knobs", {}, 2)["choices"][0]["message"]["tool_calls"])
    provider_calls = []

    def transport(url, headers, payload, timeout):
        provider_calls.append(payload)
        assert len(provider_calls) == 1, "noise failure must stop before another paid request"
        return reply

    result = AgentRunner(harness, model="fixed-model", api_key="test", max_calls=2,
                         transport=transport).run(1)
    assert result["status"] == "noise_stopped" and result["complete"] is False
    assert result["recommendation"] is None and result["calls"] == 1
    assert result["builds"] == 1 and harness.knob_reads == 1  # Initial context only.
    assert harness.events[-1] == ("agent_stopped", result)
    tool_results = [data for event, data in harness.events if event == "tool_result"]
    assert len(tool_results) == 1
    assert tool_results[0]["result"]["status"] == "discarded_drift"
    assert tool_results[0]["result"]["measurement_valid"] is False


def test_repeated_failed_calls_stop_even_with_successful_queries_between_them():
    harness = Harness()
    replies = iter([
        _openai_call("run_benchmark", {"build_id": "unknown"}),
        _openai_call("query_history", {"top_k": 10, "sort_by": "throughput"}, 2),
        _openai_call("run_benchmark", {"build_id": "unknown"}, 3),
        _openai_call("list_knobs", {}, 4),
        _openai_call("run_benchmark", {"build_id": "unknown"}, 5),
    ])
    requests = []

    def transport(url, headers, payload, timeout):
        requests.append(json.loads(json.dumps(payload)))
        return next(replies)

    result = AgentRunner(harness, model="fixed-model", api_key="test", max_calls=10,
                         transport=transport).run(1)
    assert result["status"] == "tool_loop_stopped" and result["complete"] is False
    assert result["recommendation"] is None and result["repeated_tool_failures"] == 3
    assert len(requests) == result["calls"] == 5
    recorded = [data for event, data in harness.events if event == "tool_result"]
    assert len(recorded) == 5 and sum(item["is_error"] for item in recorded) == 3
    assert harness.events[-1] == ("agent_stopped", result)


def test_build_and_measurement_progress_reset_failed_call_guard():
    harness = Harness()
    build_id = Candidate().hash()
    actions = [
        ("run_benchmark", {"build_id": "unknown"}),
        ("run_benchmark", {"build_id": "unknown"}),
        ("build", {"candidate": Candidate().to_dict()}),
        ("run_benchmark", {"build_id": "unknown"}),
        ("run_benchmark", {"build_id": "unknown"}),
        ("run_benchmark", {"build_id": build_id}),
        ("run_benchmark", {"build_id": "unknown"}),
        ("run_benchmark", {"build_id": "unknown"}),
        ("finish", {"recommendation": build_id, "rationale": "measured"}),
    ]
    replies = iter(_openai_call(name, arguments, index)
                   for index, (name, arguments) in enumerate(actions))
    result = AgentRunner(harness, model="fixed-model", api_key="test", max_calls=10,
                         transport=lambda *args: next(replies)).run(1)
    assert result["status"] == "finished" and result["calls"] == 9
    assert not any(event == "agent_stopped" for event, _ in harness.events)


def test_anthropic_parallel_tool_results_are_one_user_message():
    harness = Harness()
    requests = []
    replies = iter([
        {"content": [{"type": "tool_use", "id": "one", "name": "list_knobs", "input": {}},
                     {"type": "tool_use", "id": "two", "name": "query_history",
                      "input": {"top_k": 10, "sort_by": "throughput"}}], "stop_reason": "tool_use"},
        {"content": [{"type": "text", "text": "No more calls"}], "stop_reason": "end_turn"},
    ])
    def transport(url, headers, payload, timeout):
        requests.append(json.loads(json.dumps(payload)))
        assert "seed" not in payload and "system" in payload
        return next(replies)
    result = AgentRunner(harness, provider="anthropic", model="fixed-model", api_key="test",
                         max_calls=2, transport=transport).run(1)
    assert result["status"] == "call_limit"
    result_message = requests[1]["messages"][-2]
    assert result_message["role"] == "user"
    assert [block["tool_use_id"] for block in result_message["content"]] == ["one", "two"]


def test_agent_errors_return_to_model_without_executing_unknown_tools():
    harness = Harness()
    requests = []
    replies = iter([_openai_call("exec", {"command": "false"}),
                    _openai_call("build", {"candidate": {"compiler": "gcc"}}, 2)])
    def transport(url, headers, payload, timeout):
        requests.append(json.loads(json.dumps(payload)))
        return next(replies)
    result = AgentRunner(harness, model="fixed-model", api_key="test", max_calls=2,
                         transport=transport).run(1)
    assert result["builds"] == 0
    assert "Unknown tool" in requests[1]["messages"][-2]["content"]
    assert harness.built == {}


def test_no_credentials_never_falls_back(monkeypatch):
    monkeypatch.delenv("OPENAI_API_KEY", raising=False)
    with pytest.raises(RuntimeError, match="no scripted fallback"):
        AgentRunner(Harness(), model="fixed-model").run(1)


def test_budget_stops_more_builds_even_when_model_ignores_it():
    harness = Harness()
    replies = iter([_openai_call("build", {"candidate": Candidate().to_dict()}),
                    _openai_call("build", {"candidate": Candidate(opt="O2").to_dict()}, 2)])
    result = AgentRunner(harness, model="fixed-model", api_key="test", max_calls=2,
                         transport=lambda *args: next(replies)).run(1)
    assert result["status"] == "call_limit" and len(harness.built) == 1
    assert any("exhausted" in str(data) for event, data in harness.events if event == "tool_result")


def test_finish_cannot_end_race_before_requested_budget():
    harness = Harness()
    dispatcher = ToolDispatcher(harness, budget=2)
    build_id = dispatcher.dispatch('build', {'candidate': Candidate().to_dict()})['build_id']
    dispatcher.dispatch('run_benchmark', {'build_id': build_id})
    with pytest.raises(ValueError, match='full requested'):
        dispatcher.dispatch('finish', {'recommendation': build_id, 'rationale': 'too soon'})
    assert not dispatcher.finished


def test_dispatcher_syncs_harness_budget_after_rejected_proposal():
    class RejectingHarness(Harness):
        builds_used = 0
        seen = {Candidate().hash()}
        def build(self, candidate):
            raise ValueError('PGO needs training input')
    harness = RejectingHarness()
    dispatcher = ToolDispatcher(harness, budget=2)
    with pytest.raises(ValueError, match='Duplicate'):
        dispatcher.dispatch('build', {'candidate': Candidate().to_dict()})
    with pytest.raises(ValueError, match='training'):
        dispatcher.dispatch('build', {'candidate': Candidate(pgo=True).to_dict()})
    assert dispatcher.builds_used == 0
