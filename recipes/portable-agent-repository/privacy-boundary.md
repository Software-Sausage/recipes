# Privacy and safety boundary

## Keep out of agent context

- `.env` files, API tokens, private keys, browser profiles, and cloud configs;
- customer data, production exports, private support logs, and personal data;
- files outside the repository unless the owner explicitly approves each one.

Use a sanitized fixture or an isolated copy. Give the harness the minimum file
and command access required for the task. Review its diff and command history
before committing. Run deterministic checks yourself; model agreement is not
proof and a passing test is not deployment approval.

`verify.sh` rejects common secret filenames and unexpected fixture files. It
does not inspect Git history, detect every secret format, sandbox the agent, or
replace the repository owner's security review.
