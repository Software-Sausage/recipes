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

No cross-harness or cross-model run has been performed by this repository.
Those results remain a planned benchmark. Use `templates/run-log.md` to record
the harness, model, cost, elapsed time, interventions, and verifier result for
each real run; do not infer quality from a model vendor's benchmark.

Read `privacy-boundary.md` before using the pack on a real repository. See
`open-source-options.md` for explicitly unverified open-source combinations.
