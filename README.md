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
| [Portable agent-ready repository](recipes/portable-agent-repository) | One shared instruction source, a fixed coding fixture, and credential-free verification | Fixture-verified; harness benchmark planned |
| [Research paper](recipes/research-paper) | A source ledger, LaTeX manuscript, build evidence, and adversarial review log | Editorial |

The recipes are free under the MIT license. They do not replace source
verification, institutional policy, or qualified human review.

More workflows and independent software guidance:
[softwaresausage.com](https://softwaresausage.com/ai).

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
