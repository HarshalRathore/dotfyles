---
title: "Legal Data Characteristics"
tags:
  - legal
  - data-characteristics
  - document-processing
  - domain-specific
  - rag
  - aief2025
aliases:
  - Legal Document Characteristics
sources:
  - "[[sources/watchv=w1mizchnkfa]]"
summary: "Legal data is characterized by extreme length, high density, complex cross-references, domain-specific jargon, temporal sensitivity, and strict privacy requirements."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/legal-ai|Legal AI]]"
    type: related_to
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: related_to
---

# Legal Data Characteristics

Legal data has a distinct set of characteristics that make it one of the most challenging domains for AI systems, particularly RAG pipelines. These characteristics drive the need for specialized infrastructure and evaluation approaches. ^[extracted]

## Document Properties

- **Extreme length** — legal documents are often very long, dense, and packed with content
- **High density** — every sentence may contain legally significant information
- **Complex cross-references** — documents reference other documents, regulations, articles, and directives
- **Temporal sensitivity** — applicability depends on dates (e.g., "issued before 9 July 2022")

## Domain Complexity

- **Specialized jargon** — abbreviations, acronyms, and terminology unique to legal practice
- **Multi-jurisdictional** — data spans countries, each with different legal frameworks
- **Regulatory frameworks** — directives, articles, regulations that interlock in complex ways
- **Expert-level queries** — lawyers issue queries that assume deep domain knowledge

## Data Organization

Harvey organizes legal data at three scales, each with distinct characteristics: ^[extracted]

| Scale | Description | Example |
|---|---|---|
| On-demand uploads | Small, individual documents | 1–50 documents per upload |
| Vaults | Project-scale collections | All docs for a single deal/case |
| Data corpuses | Knowledge-base scale | Country-wide legislation, case law |

## Privacy and Security

- **Confidential deals** — M&A transactions, litigation strategy
- **Regulated data** — financial filings, IPO documents
- **Customer segregation** — data must be isolated by client
- **Retention policies** — some docs can only be stored for limited periods

## Related

- [[concepts/legal-ai|Legal AI]] — the application domain
- [[concepts/enterprise-rag|Enterprise RAG]] — infrastructure challenges
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — retrieval strategies needed

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
