# Research-paper agent recipe

Use a repository-aware agent to turn permitted source material into a
traceable LaTeX manuscript. The agent organizes and critiques; the author
owns every claim, citation, and submission decision.

## Use it

1. Work in a private copy or fork of this directory.
2. Fill in `brief.md`.
3. Put permitted source files in `sources/`. They are ignored by Git.
4. Open this directory in Codex or Claude Code.
5. Paste `PROMPT.md` into the agent.
6. Run `./verify.sh` during drafting and `./verify.sh --final` before review.

Codex reads the scoped `AGENTS.md` before working. `CLAUDE.md` directs Claude
Code to the same instructions, so both agents operate from one recipe.

## Outputs

- `source-ledger.md`: each material claim and its verification status;
- `outline.md`: the argument before prose hides gaps;
- `manuscript.tex`: the versionable manuscript;
- `library.bib`: bibliography records checked by the author; and
- `review-findings.md`: open and resolved review findings.

Do not commit confidential, copyrighted, or personally identifying source
material. The `sources/` directory is ignored except for its README.

Web guide: https://softwaresausage.com/guides/research-paper-workflow
