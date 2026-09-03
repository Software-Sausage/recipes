# MCP server preflight

Audit an MCP server before you let it run beside source code, documents,
credentials, or production accounts. This kit produces a decision record; it
does not certify a server as safe.

## Run the preflight

1. Copy [`mcp-preflight.md`](mcp-preflight.md) into a private working directory.
2. Record the exact repository, revision, package or image digest, startup
   command, transport, and publisher before executing anything.
3. Review source and manifests without running project install hooks. Scan a
   supported lockfile or SBOM with OSV-Scanner, and inspect individual OpenSSF
   Scorecard findings when the repository is supported.
4. Complete the permission ledger. Use a disposable test environment, no
   production secrets, a read-only fixture, restricted filesystem roots, and
   denied-by-default network access for the first run.
5. Test every exposed tool's normal path, denied-permission path, malformed
   input, and confirmation boundary. Record an approve, pilot, or reject
   decision with an owner, review date, and revocation path.
6. Run `./verify.sh` to check that the decision gates remain in the worksheet.

Example dependency evidence commands:

```sh
osv-scanner scan source --lockfile=/absolute/path/to/package-lock.json --format=json
scorecard --repo=github.com/OWNER/REPOSITORY --show-details
```

Do not install or execute an untrusted project merely to scan it. A clean
known-vulnerability result and a high aggregate Scorecard score are incomplete
signals, not approval. Read the individual findings and verify the server's
actual runtime behavior.

Primary references reviewed September 3, 2026:

- https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices
- https://modelcontextprotocol.io/specification/2025-11-25/basic/authorization
- https://github.com/google/osv-scanner/blob/main/docs/scan-source.md
- https://github.com/ossf/scorecard/blob/main/docs/checks.md

Companion workflow:
https://softwaresausage.com/ai/recipes/mcp-server-preflight
