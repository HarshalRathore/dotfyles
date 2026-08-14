---
title: Chroma
category: entities
tags: [company, vector-database, embeddings, research]
aliases: [trychroma, Chroma DB]
relationships:
  - target: '[[concepts/context-rot]]'
    type: related_to
sources:
  - https://www.trychroma.com/
  - https://www.trychroma.com/research/context-rot
summary: "Chroma — company behind the open-source embedding database; published the 'Context Rot' report (2025-07-14) showing LLM performance degrades non-uniformly with input length."
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T15:30:00Z
---

# Chroma

**Chroma** (trychroma.com) is the company behind the open-source embedding database of the same name. Its research arm publishes technical reports on retrieval and context; the most notable for this wiki is **Context Rot: How Increasing Input Tokens Impacts LLM Performance** (2025-07-14) by Kelly Hong, Anton Troynikov, and Jeff Huber — an 18-model study showing performance degrades non-uniformly with input length, frequently cited as the empirical case against unbounded context growth. ^[extracted]

## Related

- [[references/chroma-context-rot-report|Context Rot — Chroma Technical Report]] — the deep-dive of the report
- [[concepts/context-rot|Context Rot]] — concept page (distinguishes token-level degradation from agent-level forgetting)
- [[concepts/vector-database|Vector Database]] — the product category
