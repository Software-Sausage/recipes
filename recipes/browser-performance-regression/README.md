# Browser performance regression

Reproduce, diagnose, and verify one slow browser flow with fixed conditions and
before-and-after evidence. This kit combines functional Playwright checks with
Chrome DevTools traces; it does not turn one lab run into a field-performance claim.

## Run the recipe

1. Copy `performance-ledger.md` and freeze the affected URL, viewport, browser,
   data state, network and CPU conditions, and user action.
2. Use Playwright to reproduce the functional flow before changing code.
3. In an isolated Chrome profile, capture a DevTools performance trace plus the
   relevant console and network evidence.
4. Trace the bottleneck to a shared root cause and implement the smallest fix
   that preserves behavior and accessibility.
5. Repeat identical before-and-after runs, compare medians and trace insights,
   and retain raw artifacts.
6. Have a different reviewer inspect the diff and evidence; manually confirm the
   flow on a representative real device.
7. Run `./verify.sh` to check that the ledger retains its required gates.

Chrome DevTools MCP exposes the connected browser's contents to the MCP client.
Use an isolated profile without unrelated accounts or personal data. Disable CrUX
lookups and usage statistics when the tested URL or environment should not be sent.

Primary references reviewed September 3, 2026:

- https://github.com/ChromeDevTools/chrome-devtools-mcp
- https://github.com/ChromeDevTools/chrome-devtools-mcp/blob/main/docs/tool-reference.md
- https://playwright.dev/docs/intro

Companion workflow:
https://softwaresausage.com/ai/recipes/browser-performance-regression
