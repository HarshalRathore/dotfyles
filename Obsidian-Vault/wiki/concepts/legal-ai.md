---
title: "Legal AI"
tags:
  - legal
  - ai
  - enterprise
  - domain-specific
  - rag
  - aief2025
aliases:
  - AI in Legal
sources:
  - "[[sources/watchv=w1mizchnkfa]]"
summary: "AI applications in the legal industry face unique challenges: massive domain-specific documents, complex expert queries, strict data privacy requirements, and the need for expert-in-the-loop evaluation."
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: extends
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: uses
---

# Legal AI

Legal AI represents one of the most demanding application domains for retrieval-augmented generation (RAG) systems. The domain combines massive scale, extreme domain specificity, strict privacy requirements, and queries of unusual complexity. ^[extracted]

## Harvey's Three Data Scales

[[entities/harvey-ai|Harvey]] processes legal data at three distinct scales, each with different retrieval challenges: ^[extracted]

1. **On-demand uploads** (1–50 documents) — individual document analysis, similar to consumer AI assistant workflows
2. **Vaults** (project-scale) — entire matter collections: all contracts, litigation documents, and emails for a single deal or case
3. **Data corpuses** (knowledge-base scale) — country-wide legislation, case law, taxes, and regulations, often tens of millions of documents

## Domain Challenges

Legal AI faces several unique challenges that distinguish it from other domains: ^[extracted]

- **Long, dense documents** — legal texts are packed with content, cross-references, and conditional logic
- **Domain-specific jargon** — requires deep understanding of legal terminology, abbreviations, and regulatory frameworks
- **Expert queries** — lawyers issue queries that combine semantic search, temporal filtering, keyword matching, and regulatory cross-referencing in a single question
- **Data privacy** — confidential deals, IPOs, and financial filings require strict segregation and retention policies
- **Evaluation difficulty** — the domain is so specialized that engineers and researchers cannot judge quality without domain expert involvement

## Example Query Complexity

A typical Harvey query demonstrates the multi-dimensional complexity: "What is the applicable regime to covered bonds issued before 9 July 2022 under the directive EU 2019-2062 and article 129 of the CRR?" This query requires: ^[extracted]

- Semantic understanding of "applicable regime" and "covered bonds"
- Temporal filtering (before 9 July 2022)
- Reference to a specific dataset (EU laws and directives)
- Keyword matching on regulation/directive IDs
- Multi-part reasoning across two different regulations (one directive, one article)
- Domain jargon resolution (CRR = capital requirements regulation)

## Related

- [[concepts/enterprise-rag|Enterprise RAG]] — scaling RAG for enterprise data
- [[concepts/eval-driven-development|Eval-Driven Development]] — evaluation-first approach
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — combining multiple retrieval strategies
- [[entities/harvey-ai|Harvey]] — leading legal AI company

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
