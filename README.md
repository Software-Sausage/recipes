# Software Sausage recipes

Pullable, inspectable agent workflows for real jobs. Each recipe includes the
instructions, starter artifacts, safety boundary, and smallest useful check.

## Start here

```sh
git clone https://github.com/Software-Sausage/recipes.git sausage-recipes
cd sausage-recipes/recipes/portable-agent-repository
./verify.sh
```

That credential-free check should end with `Verification passed`. To benchmark
an agent, copy the input fixture as described in this recipe's README, open the
directory in Codex, Claude Code, or another repository-aware agent, and paste
the task from `PROMPT.md`.

## Recipes

| Recipe | Produces | Status |
| --- | --- | --- |
| [Portable agent-ready repository](recipes/portable-agent-repository) | One shared instruction source, a fixed coding fixture, and credential-free verification | Cross-harness baseline plus a measured Claude Code/Opus 5 comparison with and without Ponytail |
| [Research paper](recipes/research-paper) | A source ledger, LaTeX manuscript, build evidence, and adversarial review log | Editorial |
| [Obsidian Operator sampler](recipes/obsidian-operator-sampler) | A clean-vault daily, meeting, person, project, task, and procedure loop | Fixture-verified sampler |
| [Slack to Mattermost](recipes/slack-to-mattermost) | A fixed cost model, operating assumptions, privacy boundary, and migration checklist | Fixture-verified decision kit |
| [Self-hosted vs. managed forge](recipes/self-hosted-vs-managed-forge) | A metadata-only repository inventory, ownership matrix, privacy boundary, and migration checklist | Fixture-verified decision kit |
| [CRM admin and exit cost](recipes/crm-admin-exit-cost) | An editable cost model and reconstruction-focused exit test | Fixture-verified decision kit |
| [Automation platform reliability and exit](recipes/automation-platform-exit-test) | A workflow inventory, failure drills, and clean-instance reconstruction checks | Fixture-verified decision kit |

The recipes are free under the MIT license. They do not replace source
verification, institutional policy, or qualified human review.

More workflows and independent software guidance:
[softwaresausage.com](https://softwaresausage.com/ai?source=referral&utm_campaign=github-recipes).

## Measured agent baseline

The pinned [v0.12.0 benchmark](https://github.com/Software-Sausage/recipes/blob/v0.12.0/recipes/portable-agent-repository/benchmarks/2026-09-03.md)
records harness and model versions, elapsed time, reported cost, file scope,
failed commands, verifier output, and limitations. Codex/GPT-5.6-sol,
Claude Code/Opus 5, and OpenCode/local Qwen3 Coder passed; OpenCode/local
Devstral Small 2 stopped on its own failing verifier, and Gemini CLI was
blocked before model execution. It is a small portability test, not a
universal model leaderboard.

Release [v0.8.0](https://github.com/Software-Sausage/recipes/releases/tag/v0.8.0)
adds three blinded runs per arm of Claude Code 2.1.259 with Opus 5. Both arms
passed 3/3; Ponytail 4.8.4 reduced median time 29.1% and reported list cost
28.8% on this fixture while median code size remained equal. Inspect the
[protocol and every artifact](https://softwaresausage.com/ai/comparisons/claude-code-opus-5-ponytail?source=referral&utm_campaign=github-recipes).

The [Codex CLI comparison](recipes/portable-agent-repository/benchmarks/2026-09-03-codex-gpt-5-6-sol-ponytail.md)
uses the same fixture and three runs per arm. Both arms again passed 3/3;
Ponytail reduced median implementation size from seven to three nonblank lines
but increased median time and tokens. The different result is why add-ons must
be tested per harness and job.

## Request a recipe

[Request a recipe](https://github.com/Software-Sausage/recipes/issues/new?template=recipe-request.yml)
with the job, required artifact, inputs, constraints, and a verification method.
Do not submit vendor-sponsored ranking copy or unverified benchmark claims.

Optional one-time support is available through the repository sponsor button.
Contributions never affect recipe inclusion, comparison, or ranking.

Need a business-software decision instead? The
[free shortlist](https://softwaresausage.com/build?source=referral&utm_campaign=github-recipes)
comes before an optional $39 private report.
