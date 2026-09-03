# Open-source options

These are placement hypotheses, not Software Sausage benchmark results.

| Harness | Model hypothesis | Why test it | Current proof |
| --- | --- | --- | --- |
| [OpenCode](https://opencode.ai/docs/providers) | Local Ollama `qwen3-coder:latest`, 30.5B parameters, Q4_K_M, Apache-2.0 | Credential-free local baseline on available hardware | Passed the fixed fixture on 2026-09-03; see [`benchmarks/2026-09-03.md`](benchmarks/2026-09-03.md) |
| [OpenCode](https://opencode.ai/v2/docs/instructions) | [Devstral Small 2](https://huggingface.co/mistralai/Devstral-Small-2-24B-Instruct-2512) | OpenCode reads `AGENTS.md`; Devstral's model card targets agentic software work and uses Apache-2.0 | Failed the fixed fixture on one clean run; see [`benchmarks/2026-09-03.md`](benchmarks/2026-09-03.md) |
| [OpenCode](https://opencode.ai/v2/docs/instructions) | [Qwen3-Coder-Next](https://huggingface.co/Qwen/Qwen3-Coder-Next) | The model card targets coding agents and local development and uses Apache-2.0 | Not run: its 80B total parameters exceed this host's fair 24 GB VRAM boundary |
| [Gemini CLI](https://geminicli.com/docs/cli/gemini-md/) | Devstral Small 2 or Qwen3-Coder-Next through a compatible endpoint | Gemini CLI can import the canonical rules through `GEMINI.md`; provider compatibility must be confirmed for the selected setup | Not run |

"Open-source" is not the same as "runs cheaply on your computer." Check model
license, hardware, quantization, provider privacy, and harness compatibility for
your exact deployment. Compare combinations on the unchanged fixture and log
cost, elapsed time, interventions, diff, and `verify.sh` result.
