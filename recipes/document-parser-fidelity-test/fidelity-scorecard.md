# Document parser fidelity scorecard

## Fixture and authority

- Decision the extraction supports:
- Authority to process the documents:
- Storage and deletion boundary:
- Fixture source and hashes:
- Deliberately difficult elements:

## Pinned parsers

| Field | MarkItDown | Docling |
| --- | --- | --- |
| Version or revision |  |  |
| License checked |  |  |
| Exact command |  |  |
| Container and mounts |  |  |
| Network access |  |  |
| Warnings |  |  |
| Elapsed time |  |  |

## Fidelity checks

| Document and location | Heading/order | Table cells | Footnotes/citations | Page/source location | Omission or OCR error | Winner |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |

## Downstream claim check

| Material claim | Extracted location | Original location | Supported, unclear, or contradicted | Human reviewer |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Final gate

- [ ] Source hashes and processing authority are recorded.
- [ ] Both parsers ran on the identical fixture.
- [ ] Raw outputs, warnings, commands, versions, and conditions are retained.
- [ ] Tables, references, omissions, OCR, and source locations were checked.
- [ ] Parser services had only the required mounts and network access.
- [ ] Every decision-changing claim was reopened in the original document.
- [ ] The decision names document types where the result may not hold.

Do not send extracted text downstream when missing tables, citations, page context,
or reading order could change the decision.
