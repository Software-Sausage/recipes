# Document parser fidelity test

Compare MarkItDown and Docling on documents like yours before feeding extracted
text to a model. The decision is based on preserved evidence, not how readable
one generated summary appears.

## Run the recipe

1. Copy `fidelity-scorecard.md` and select a small authorized fixture containing
   headings, tables, footnotes, citations, page references, and a difficult layout.
2. Record source hashes and run pinned MarkItDown and Docling versions separately
   in restricted containers.
3. Retain raw Markdown, structured output, warnings, elapsed time, and exact commands.
4. Compare ordering, table cells, references, omissions, OCR errors, and usable
   source locations against the original documents.
5. Use only the stronger eligible extraction for downstream model work, then have
   a person reopen every decision-changing number, date, obligation, and citation.
6. Run `./verify.sh` to check that the scorecard retains its required gates.

MarkItDown MCP has no authentication and can read files available to its process.
Restrict mounts and network access; never expose it broadly or pass untrusted files
beside sensitive data.

Primary references reviewed September 3, 2026:

- https://github.com/microsoft/markitdown
- https://github.com/microsoft/markitdown/blob/main/packages/markitdown-mcp/README.md
- https://github.com/docling-project/docling/blob/main/docs/reference/cli.md

Companion workflow:
https://softwaresausage.com/ai/recipes/document-parser-fidelity-test
