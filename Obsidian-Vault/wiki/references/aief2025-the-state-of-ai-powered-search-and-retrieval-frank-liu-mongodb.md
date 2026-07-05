---
title: "The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI)"
category: references
tags: [aief2025, search, retrieval, embeddings, re-ranking, agentic, voyage-ai, mongodb]
aliases: [Frank Liu AIEF2025, AI Powered Search Frank Liu]
summary: "Frank Liu's AIEF2025 talk on AI-powered search: definition, three real-world applications (code search, structured filtering, agentic retrieval), and the future of retrieval systems."
sources:
  - "https://www.youtube.com/watch?v=pIPtpBZ6TKk"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/frank-liu]]"
    type: has_speaker
  - target: "[[entities/mongodb]]"
    type: has_speaker_affiliation
  - target: "[[entities/voyage-ai]]"
    type: has_speaker_affiliation
  - target: "[[misc/ai-engineer-worlds-fair-2025]]"
    type: part_of
---

# The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI)

**Speaker:** Frank Liu (MongoDB, formerly Voyage AI)
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=pIPtpBZ6TKk

## Summary

Frank Liu presents an overview of AI-powered search and retrieval, covering its definition, three real-world applications, and the future direction of the field. The talk emphasizes that embedding quality is the core component of AI-powered search, and that no single model works for all domains.

## Agenda

1. Refresher on embeddings, search, and retrieval
2. Three real-world applications with key lessons
3. The future of AI-powered search and retrieval

## Key Definitions

### AI-Powered Search

Liu defines AI-powered search as a system that: ^[extracted]

- Finds related concepts even without identical wording
- Understands the user's intent (not just keywords)
- Can perform reasoning and instruction following

This goes beyond traditional TF-IDF/BM25 by combining keyword matching with semantic understanding.

## Three Real-World Applications

### 1. Chatting with Your Codebase (continue.dev)

A classic RAG plus re-ranking approach for code understanding. ^[extracted]

**Key Lesson:** There is no one-size-fits-all embedding model. continue.dev evaluated multiple models and found Voyage Code 3 to be the best because it understands code, documentation, and developer semantics. ^[extracted]

### 2. Domain-Specific Search with Structured Filtering

Search systems that combine embedding-based retrieval with structured data filters (metadata predicates). Example: legal document search where embeddings capture semantic similarity but filters enforce jurisdiction, document type, and other constraints. ^[extracted]

**Key Lesson:** Embeddings alone are not enough. Powerful search systems need structured data as an additional signal, applied at the filtering stage inside the vector store or as a post-retrieval filter. ^[extracted]

### 3. Agentic Retrieval

Retrieval as a feedback loop where the LLM decomposes queries, issues multiple searches, expands queries, and iterates. Example: "X's Q4 2024 earnings" decomposed into four separate queries for each quarter. ^[extracted]

**Key Lesson:** In the era of agents (2025), search systems must support conversational, decomposed queries — not just single-shot retrieval. ^[extracted]

## Key Statistics and Claims

- 95–99% of AI-powered search systems use embeddings in some form ^[extracted]
- Embedding quality is a core component of AI-powered search ^[extracted]
- 2025 is "the year of the agents" ^[extracted]
- No one-size-fits-all embedding model or LLM ^[extracted]

## Related Pages

- [[entities/frank-liu]] — speaker
- [[entities/mongodb]] — current employer
- [[entities/voyage-ai]] — previous employer
- [[entities/continue-dev]] — example application
- [[concepts/ai-powered-search]] — definition and capabilities
- [[concepts/agentic-retrieval]] — the feedback loop architecture
- [[concepts/domain-specific-embedding-models]] — no one-size-fits-all principle
- [[concepts/structured-data-filtering]] — embeddings alone are insufficient

## Sources

- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
