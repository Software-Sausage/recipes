# Spec to production proof

Turn one software outcome into a reviewed specification, bounded implementation,
and fresh browser proof. This kit works with GitHub Spec Kit and any supported
coding agent; it does not assume that generated planning artifacts are correct.

## Run the recipe

1. Copy `proof-ledger.md` into a clean branch or worktree.
2. Pin the Spec Kit release, coding agent, model, instructions, permissions, and
   browser tooling.
3. Write the outcome, exclusions, acceptance criteria, and rollback boundary
   before generating the plan and tasks.
4. Review the generated artifacts, then let one agent implement only approved
   tasks.
5. Run the repository checks and a fresh Playwright flow. Use Chrome DevTools
   MCP in an isolated profile when console, network, or performance evidence is
   relevant.
6. Have a different model compare the final diff and evidence with the original
   specification. Resolve every material mismatch before merging.
7. Run `./verify.sh` to check that the ledger retains its required gates.

Primary references reviewed September 3, 2026:

- https://github.com/github/spec-kit/blob/main/docs/index.md
- https://playwright.dev/docs/intro
- https://github.com/ChromeDevTools/chrome-devtools-mcp

Companion workflow:
https://softwaresausage.com/ai/recipes/spec-to-production-proof
