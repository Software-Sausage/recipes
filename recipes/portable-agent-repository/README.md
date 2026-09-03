# Portable agent-ready repository

Give Codex, Claude Code, Gemini CLI, and OpenCode the same repository rules and
the same deterministic acceptance test. The pack avoids a framework: each
harness loads the canonical `AGENTS.md`, directly or through a tiny pointer.

## Run the fixed fixture

```sh
cp -R inputs/example/repository workspace
# Open this recipe directory in your agent and paste PROMPT.md.
./verify.sh workspace
```

Run `./verify.sh` with no argument to verify the shipped expected output. It
uses only POSIX shell, Python 3, and the Python standard library. No model,
network connection, or credentials are required.

## Harness instruction files

- Codex and OpenCode read `AGENTS.md`.
- Claude Code reads `CLAUDE.md`, which points to `AGENTS.md`.
- Gemini CLI reads `GEMINI.md`, which imports `AGENTS.md`.
- `skills/verified-change/SKILL.md` is ordinary Markdown loaded explicitly by
  the shared instructions, so skill discovery conventions do not matter.

## What is proven

`./verify.sh` proves that the expected fixture passes its acceptance tests,
that the test and fixture README were not changed, and that the target contains
no extra, symlinked, or commonly named secret files.

A first cross-harness baseline is recorded in
[`benchmarks/2026-09-03.md`](benchmarks/2026-09-03.md). Codex and Claude Code
passed with hosted models, and OpenCode passed with a local Qwen3 Coder model;
Gemini CLI was blocked before model execution. Use `templates/run-log.md` for
further runs and do not infer a universal winner from this small task.

Read `privacy-boundary.md` before using the pack on a real repository. See
`open-source-options.md` for explicitly unverified open-source combinations.
