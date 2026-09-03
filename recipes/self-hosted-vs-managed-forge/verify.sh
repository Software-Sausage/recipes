#!/usr/bin/env sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
fixture=$(mktemp -d)
trap 'rm -rf "$fixture"' EXIT HUP INT TERM

git init -q "$fixture"
git -C "$fixture" config user.name Fixture
git -C "$fixture" config user.email fixture@example.com
mkdir -p "$fixture/.github/workflows"
printf 'fixture\n' > "$fixture/README.md"
printf 'name: verify\n' > "$fixture/.github/workflows/verify.yml"
git -C "$fixture" add .
git -C "$fixture" commit -qm fixture
git -C "$fixture" remote add origin 'https://user:secret-token@example.com/private/repository.git'

actual=$("$root/inventory.sh" "$fixture")
printf '%s\n' "$actual" | grep -q '^tracked_files=2$'
printf '%s\n' "$actual" | grep -q '^github_actions=1$'
printf '%s\n' "$actual" | grep -q '^remote_hosts=example.com$'
if printf '%s\n' "$actual" | grep -q 'secret-token\|private/repository'; then
  echo 'Inventory leaked a remote credential or path.' >&2
  exit 1
fi

echo 'Forge decision-kit verification passed.'
