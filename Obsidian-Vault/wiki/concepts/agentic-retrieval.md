---
title: Agentic Retrieval
category: concepts
tags: [agentic, retrieval, feedback-loop, query-decomposition, multi-step, llm]
aliases: [agentic search, agentic RAG]
summary: "Retrieval architecture where the search system participates in a feedback loop with the LLM — the agent decomposes queries, issues multiple searches, expands queries, and iterates rather than performing a single input-output lookup."
sources:
  - "AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: extends
  - target: "[[concepts/query-decomposition]]"
    type: uses
  - target: "[[concepts/rag-agent-symbiosis]]"
    type: related_to
  - target: "[[concepts/ai-powered-search]]"
    type: extends
---

# Agentic Retrieval

Agentic retrieval is a retrieval architecture where the search system participates in a feedback loop with the LLM, rather than operating as a simple input-output function. The agent can decompose queries, issue multiple searches, expand queries, and iterate based on intermediate results. ^[extracted]

## Beyond Single-Shot Retrieval

Traditional RAG is a linear pipeline: query → embed → retrieve → generate. Agentic retrieval replaces this with a loop: ^[extracted]

1. **Query decomposition** — The LLM breaks a complex query into sub-queries (e.g., "X's Q4 2024 earnings" → four separate queries for Q1, Q2, Q3, Q4)
2. **Parallel search** — Each sub-query is sent to the appropriate vector store or database
3. **Query expansion** — The LLM can expand or refine queries based on initial results
4. **Iterative refinement** — Results from one search inform subsequent searches

## Example: Financial Query Decomposition

When asked "What are X's (formerly Twitter's) Q4 2024 earnings?", an agentic retrieval system would: ^[extracted]

1. Decompose the query into four sub-queries (Q1, Q2, Q3, Q4 earnings)
2. Send each sub-query to the relevant vector store
3. Combine results from all four searches
4. Generate a comprehensive answer from the combined context

This requires the search system to be powerful enough to handle conversational, decomposed queries — not just simple keyword or embedding matches. ^[inferred]

## The Agent Era

Liu frames 2025 as "the year of the agents," with agents requiring powerful conversational data and retrieval systems. Agentic retrieval is the search architecture that supports this shift — it treats the search system as a component of an agent loop rather than a standalone service. ^[extracted]

## Relationship to RAG-Agent Symbiosis

Agentic retrieval is an evolution of [[concepts/rag-agent-symbiosis|RAG-agent symbiosis]], where agents need RAG for context and RAG needs agents for introspection and decomposition. Agentic retrieval makes this bidirectional relationship explicit in the architecture. ^[inferred]

## Related

- [[concepts/query-decomposition]] — the decomposition technique
- [[concepts/rag-agent-symbiosis]] — the broader symbiotic relationship
- [[concepts/rag-pipeline-architecture]] — the traditional alternative
- [[concepts/ai-powered-search]] — the broader category

## Sources

- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
