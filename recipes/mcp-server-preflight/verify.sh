#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Exact startup command' "$root/mcp-preflight.md"
grep -q 'No wildcard filesystem roots' "$root/mcp-preflight.md"
grep -q 'token passthrough is not used' "$root/mcp-preflight.md"
grep -q 'denied or malformed-input test' "$root/mcp-preflight.md"
grep -q 'evidence, not verdicts' "$root/mcp-preflight.md"
grep -q 'Do not install or execute an untrusted project' "$root/README.md"
echo "MCP server preflight checks passed."
