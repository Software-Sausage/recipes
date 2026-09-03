# Privacy boundary

- Start from this empty sampler; never make a product by deleting notes from a
  real vault or its Git history.
- Exclude attachments, trash, workspace state, caches, credentials, API tokens,
  private keys, deleted files, and hidden history from any shared artifact.
- Treat plugins as executable code. Review source, permissions, network use,
  updates, and maintainers before enabling them.
- Disable sync and cloud-model access when the notes are not authorized for
  those services.
- Keep external actions—messages, calendar changes, tickets, and publishing—out
  of agent scope unless a human approves that exact action.
- Run `./verify.sh` before sharing. It reduces common disclosure mistakes; it is
  not a proof that prose contains no private information.
