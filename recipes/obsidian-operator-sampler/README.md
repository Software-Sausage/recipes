# Obsidian Operator sampler

A new, empty-vault starter for turning daily notes, meetings, people, projects,
and tasks into linked Markdown. It was rebuilt from the workflow pattern—not
copied or sanitized from the 4,537-note source vault.

## Install

1. Copy this directory to a new location; do not merge it into a working vault.
2. Open it as a vault in current Obsidian.
3. Enable Daily Notes and set the included folder, format, and template when
   prompted by the included configuration.
4. Install and explicitly trust Dataview and Templater. The configuration names
   Obsidian Git and Meta Bind for the full workflow, but the sampler does not
   require their actions.
5. Enable Templater's trigger-on-new-file setting, then create one note from
   each template and confirm the `Home.md` queries.
6. Run `./verify.sh` before sharing or packaging the vault.

The canonical statuses are `inbox`, `planned`, `doing`, `blocked`, `done`,
`dropped`, and `archived`. All dates use `YYYY-MM-DD`; people, projects, and
sources are YAML lists of wiki links.

Read `migration.md`, `privacy.md`, and `removal.md` before using real data.
`open-source-options.md` covers portable alternatives. This sampler is free;
the planned premium pack remains gated on clean-install tests and real demand.
