# Software Sausage recipes

Pullable, inspectable agent workflows for real jobs. Each recipe includes the
instructions, starter artifacts, safety boundary, and smallest useful check.

## Start here

```sh
git clone https://github.com/Software-Sausage/recipes.git sausage-recipes
cd sausage-recipes/recipes/portable-agent-repository
```

Open that directory in Codex, Claude Code, or another repository-aware agent,
then paste the task from `PROMPT.md`.

## Recipes

| Recipe | Produces | Status |
| --- | --- | --- |
| [Portable agent-ready repository](recipes/portable-agent-repository) | One shared instruction source, a fixed coding fixture, and credential-free verification | Codex, Claude Code, and local OpenCode/Qwen3 Coder passed; Gemini CLI blocked before model execution |
| [Research paper](recipes/research-paper) | A source ledger, LaTeX manuscript, build evidence, and adversarial review log | Editorial |
| [Obsidian Operator sampler](recipes/obsidian-operator-sampler) | A clean-vault daily, meeting, person, project, task, and procedure loop | Fixture-verified sampler |

The recipes are free under the MIT license. They do not replace source
verification, institutional policy, or qualified human review.

More workflows and independent software guidance:
[softwaresausage.com](https://softwaresausage.com/ai).

## Measured agent baseline

The pinned [v0.7.0 benchmark](https://github.com/Software-Sausage/recipes/blob/v0.7.0/recipes/portable-agent-repository/benchmarks/2026-09-03.md)
records harness and model versions, elapsed time, reported cost, file scope,
failed commands, verifier output, and limitations. It is a small portability
test, not a universal model leaderboard.

## Request a recipe

[Request a recipe](https://github.com/Software-Sausage/recipes/issues/new?template=recipe-request.yml)
with the job, required artifact, inputs, constraints, and a verification method.
Do not submit vendor-sponsored ranking copy or unverified benchmark claims.

Optional one-time support is available through the repository sponsor button.
Contributions never affect recipe inclusion, comparison, or ranking.

## Software decision kits

- [Slack to Mattermost](recipes/slack-to-mattermost): fixed 25-person cost
  model, editable operating assumptions, privacy boundary, and migration
  checklist.
- [Self-hosted vs managed forge](recipes/self-hosted-vs-managed-forge):
  metadata-only repository inventory, ownership matrix, privacy boundary, and
  migration checklist.
- [CRM admin and exit cost](recipes/crm-admin-exit-cost): editable Pipedrive,
  HubSpot, and Salesforce cost assumptions plus a reconstruction-focused exit
  test.
