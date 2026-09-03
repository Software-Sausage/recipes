# Privacy and safety boundary

Repository migrations can expose source code, commit history, employee names,
private hostnames, customer identifiers, deploy keys, CI variables, package
credentials, and production secrets.

- Run `inventory.sh` locally. It reads Git metadata and selected configuration
  markers; it does not upload anything.
- Review `remote_hosts` before sharing output. A hostname can identify a private
  organization even when credentials and paths are removed.
- Do not publish repository names, URLs, branch names, issue content, commit
  messages, source files, or access-control exports without authorization.
- Rotate any credential found in a remote URL, tracked file, CI definition, or
  migration archive before continuing.
- Use short-lived, least-privilege credentials for the destination and runners.
- Keep exports encrypted and delete temporary copies under the approved
  retention procedure.
- Validate using a credential-free fixture before touching a production
  repository.

This kit inventories local migration facts. It does not assess code quality,
prove security, or certify that two forges have equivalent features.
