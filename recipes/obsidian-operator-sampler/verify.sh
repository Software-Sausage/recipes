#!/usr/bin/env sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
allowed='\
.gitignore
.obsidian/community-plugins.json
.obsidian/daily-notes.json
.obsidian/plugins/templater-obsidian/data.json
.obsidian/templates.json
AGENTS.md
CLAUDE.md
Home.md
People/Example Owner.md
Projects/Example Launch.md
README.md
Tasks/Verify the example.md
Templates/Daily.md
Templates/Meeting.md
Templates/Person.md
Templates/Procedure.md
Templates/Project.md
Templates/Task.md
migration.md
open-source-options.md
privacy.md
removal.md
verify.sh'

actual=$(cd "$root" && find . -type f | sed 's#^\./##' | LC_ALL=C sort)
expected=$(printf '%s\n' "$allowed" | sed '1d')
if [ "$actual" != "$expected" ]; then
  echo "Verification failed: unexpected or missing files." >&2
  printf 'Expected:\n%s\nActual:\n%s\n' "$expected" "$actual" >&2
  exit 1
fi

if find "$root" -type l -o -name .git -o -name .trash | grep -q .; then
  echo "Verification failed: links, history, or trash are not allowed." >&2
  exit 1
fi

for template in Daily Meeting Person Procedure Project Task; do
  file="$root/Templates/$template.md"
  grep -q '^type:' "$file"
  grep -q '^status:' "$file"
  grep -q '^date:' "$file"
  grep -q '^tags:' "$file"
  grep -q '^people:' "$file"
  grep -q '^projects:' "$file"
  grep -q '^source:' "$file"
done

grep -Fq '"format": "YYYY/MM/YYYY-MM-DD"' "$root/.obsidian/daily-notes.json"
grep -Fq 'YYYY/MM/YYYY-MM-DD' "$root/Templates/Daily.md"

if find "$root" -type f ! -name verify.sh -exec grep -IlE '(sk_(live|test)_[A-Za-z0-9]{16,}|ghp_[A-Za-z0-9]{20,}|glpat-[A-Za-z0-9_-]{20,}|-----BEGIN ([A-Z ]+)?PRIVATE KEY-----)' {} + | grep -q .; then
  echo "Verification failed: a likely credential is present." >&2
  exit 1
fi

echo "Obsidian sampler verification passed: allowlist, schema, daily paths, and credential scan are clean."
