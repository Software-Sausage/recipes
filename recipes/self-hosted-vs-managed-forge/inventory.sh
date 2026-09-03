#!/usr/bin/env sh
set -eu

repo=${1:-.}
git -C "$repo" rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
  echo "Not a Git worktree: $repo" >&2
  exit 1
}

count() { tr -d ' '; }
yes_no() { test "$1" -gt 0 && printf yes || printf no; }

tracked=$(git -C "$repo" ls-files | wc -l | count)
branches=$(git -C "$repo" for-each-ref --format='x' refs/heads | wc -l | count)
tags=$(git -C "$repo" tag -l | wc -l | count)
remotes=$(git -C "$repo" remote | wc -l | count)
gitlab_ci=$(git -C "$repo" ls-files --error-unmatch .gitlab-ci.yml >/dev/null 2>&1 && printf 1 || printf 0)
github_actions=$(git -C "$repo" ls-files '.github/workflows/*' | wc -l | count)
if git -C "$repo" ls-files --error-unmatch .gitattributes >/dev/null 2>&1; then
  lfs_attributes=$(git -C "$repo" show HEAD:.gitattributes 2>/dev/null | grep -c 'filter=lfs' || true)
else
  lfs_attributes=0
fi
submodules=$({ git -C "$repo" config -f .gitmodules --get-regexp '^submodule\..*\.path$' 2>/dev/null || true; } | wc -l | count)

printf '%s\n' \
  'Forge migration inventory' \
  "tracked_files=$tracked" \
  "local_branches=$branches" \
  "tags=$tags" \
  "remotes=$remotes" \
  "gitlab_ci=$(yes_no "$gitlab_ci")" \
  "github_actions=$github_actions" \
  "git_lfs_patterns=$lfs_attributes" \
  "submodules=$submodules"

printf 'remote_hosts='
first=1
for remote in $(git -C "$repo" remote); do
  url=$(git -C "$repo" remote get-url "$remote")
  case "$url" in
    *://*) host=${url#*://}; host=${host#*@}; host=${host%%/*}; host=${host%%:*} ;;
    *@*:*) host=${url#*@}; host=${host%%:*} ;;
    /*|./*|../*) host=local-path ;;
    *) host=${url%%/*} ;;
  esac
  test "$first" -eq 1 || printf ','
  printf '%s' "$host"
  first=0
done
printf '\n'

git -C "$repo" count-objects -vH | sed -n '/^count: /p;/^size: /p;/^in-pack: /p;/^size-pack: /p'
