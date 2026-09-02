#!/usr/bin/env sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target=${1:-"$root/outputs/example/repository"}
case "$target" in
  /*) ;;
  *) target="$PWD/$target" ;;
esac

for file in README.md AGENTS.md CLAUDE.md GEMINI.md PROMPT.md privacy-boundary.md \
  open-source-options.md inputs/example/request.md outputs/example/run-log.md \
  skills/verified-change/SKILL.md templates/run-log.md; do
  if [ ! -s "$root/$file" ]; then
    echo "Missing or empty pack file: $root/$file" >&2
    exit 1
  fi
done

grep -Fxq 'Read and follow `AGENTS.md` in this directory before doing any work.' "$root/CLAUDE.md"
grep -Fxq '@./AGENTS.md' "$root/GEMINI.md"

for file in README.md catalog.py test_catalog.py; do
  if [ ! -f "$target/$file" ]; then
    echo "Missing required file: $target/$file" >&2
    exit 1
  fi
done

if find "$target" -type l -print | grep -q .; then
  echo "Verification failed: symlinks are not allowed in the fixture." >&2
  exit 1
fi

extras=$(find "$target" -type f ! -path "$target/README.md" ! -path "$target/catalog.py" ! -path "$target/test_catalog.py" -print)
if [ -n "$extras" ]; then
  echo "Verification failed: unexpected or secret files:" >&2
  echo "$extras" >&2
  exit 1
fi

for file in README.md test_catalog.py; do
  if ! cmp -s "$root/inputs/example/repository/$file" "$target/$file"; then
    echo "Verification failed: $file must not change." >&2
    exit 1
  fi
done

PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$target" \
  python3 -m unittest discover -s "$target" -p 'test_*.py'

echo "Verification passed: scope and acceptance checks succeeded."
