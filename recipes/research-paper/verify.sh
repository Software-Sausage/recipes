#!/usr/bin/env sh
set -eu

for file in brief.md source-ledger.md outline.md manuscript.tex library.bib review-findings.md; do
  if [ ! -s "$file" ]; then
    echo "Missing or empty required file: $file" >&2
    exit 1
  fi
done

if [ "${1:-}" = "--final" ]; then
  if grep -nE 'TODO|UNVERIFIED|UNRESOLVED' brief.md source-ledger.md outline.md manuscript.tex library.bib review-findings.md; then
    echo "Final check failed: resolve every placeholder and unverified item." >&2
    exit 1
  fi
fi

if command -v latexmk >/dev/null 2>&1; then
  latexmk -pdf -interaction=nonstopmode -halt-on-error manuscript.tex
else
  echo "Structure passed. LaTeX build skipped because latexmk is not installed."
fi
