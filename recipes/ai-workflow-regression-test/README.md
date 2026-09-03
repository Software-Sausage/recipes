# AI workflow regression test

Compare a baseline and candidate prompt, model, tool, or agent configuration on
the same frozen cases before releasing the change. Promptfoo supplies the run
matrix; the assertions and human review supply the decision boundary.

## Run the recipe

1. Copy `regression-ledger.md` and list representative success, edge, and
   refusal cases without customer secrets.
2. Pin prompts, provider and model identifiers, settings, tools, budgets, and
   cache behavior in one Promptfoo configuration.
3. Prefer deterministic assertions for requirements that code can check. Keep
   model grading separate and identify the grader model.
4. Run baseline and candidate against identical cases, then export results,
   latency, token use, cost, and failures.
5. Run the reviewed configuration in isolated CI with scoped credentials.
6. Inspect failures and a sample of passes manually before approving release.
7. Run `./verify.sh` to check that the ledger retains its required gates.

Promptfoo configurations may execute custom JavaScript, Python, providers,
transforms, hooks, and templates. Treat a downloaded configuration as code and
never run an untrusted one beside production credentials.

Primary references reviewed September 3, 2026:

- https://github.com/promptfoo/promptfoo/blob/main/site/docs/configuration/expected-outputs/index.md
- https://github.com/promptfoo/promptfoo/blob/main/site/docs/usage/command-line.md
- https://github.com/promptfoo/promptfoo/security

Companion workflow:
https://softwaresausage.com/ai/recipes/ai-workflow-regression-test
