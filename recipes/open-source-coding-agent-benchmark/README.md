# Open-source coding-agent benchmark

Compare Qwen Code, Goose, OpenCode, or another coding harness on one real job
without changing the task underneath each competitor. This kit chooses a setup
for a bounded repository task; it does not produce a universal leaderboard.

## Run the recipe

1. Copy `benchmark-manifest.md`, freeze a resettable repository fixture, and
   write one prompt plus hidden executable acceptance checks.
2. Pin every harness, model endpoint, instruction file, tool, permission,
   add-on, budget, and environment detail.
3. Change only the configuration under test. Use fresh copies and repeat each
   arm at least three times.
4. Capture exit state, interventions, elapsed time, tokens, cost, commands,
   changed files, and raw artifacts.
5. Run the identical verifier on every artifact and blind harness labels before
   scoring correctness, maintainability, security, and unnecessary scope.
6. Publish failures and limitations with the result.
7. Run `./verify.sh` to check that the manifest retains its comparison gates.

The harness may be open source while its selected model, extension, or provider
is not. Record each component and license separately.

Primary references reviewed September 3, 2026:

- https://github.com/QwenLM/qwen-code
- https://qwenlm.github.io/qwen-code-docs/en/users/features/mcp/
- https://github.com/aaif-goose/goose
- https://opencode.ai/docs/

Companion workflow:
https://softwaresausage.com/ai/recipes/open-source-coding-agent-benchmark
