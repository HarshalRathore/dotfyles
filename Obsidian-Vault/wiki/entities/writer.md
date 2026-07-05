---
title: "Writer"
category: entities
tags:
  - company
  - ai
  - enterprise
  - llm
  - rag
  - knowledge-graph
  - aief2025
sources:
  - "AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge - Sam Julien, Writer - https://www.youtube.com/watch?v=XlAIgmi_Vow"
summary: "End-to-end agentic platform for enterprises. Builds its own models (Palmyra series), graph-based RAG systems, and AI application tools. Serves Fortune 500 and Global 2000 companies in regulated industries."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: implements
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: uses
  - target: "[[entities/sam-julien|Sam Julien]]"
    type: employs
---

# Writer

End-to-end agentic platform for enterprises. Builds its own models, graph-based RAG systems, and a suite of software tools for enterprises to build AI applications.

## Overview

Writer serves Fortune 500 and Global 2000 companies, many in highly regulated industries (healthcare, finance) where accuracy and low hallucinations are critical.

## Products

### Palmyra Model Series

- **Palmyra X5** — Enterprise model powering the AI Engineer website
- **Palmyra Med** — Domain-specific model for healthcare
- **Palmyra Fin** — Domain-specific model for finance

### Graph-Based RAG System

Writer has been building knowledge graph-based RAG for years, predating the current industry trend. Their system combines:

1. Specialized models for graph construction (nodes and edges from enterprise data)
2. Graph database querying for structured retrieval
3. Hybrid search combining graph, full-text, and similarity search
4. LLM-powered answer generation from structured context

### Research Team

Writer's research team has four areas of focus:

1. **Enterprise models** — Palmyra X5 and related models
2. **Practical evaluations** — Failsafe QA (finance benchmark)
3. **Domain-specific specialization** — Palmyra Med, Palmyra Fin
4. **Retrieval and knowledge integration** — Bringing enterprise data to work with models securely and reliably

## Philosophy

Writer's team is driven by **solving customer problems** rather than chasing hype or implementing specific solutions. This customer-first approach is what Sam Julien considers the key to their success in building effective RAG systems. ^[extracted]

## Related

- [[entities/sam-julien|Sam Julien]] — Director of Developer Relations
- [[concepts/graphrag|GraphRAG]] — their retrieval architecture
- [[concepts/enterprise-rag|Enterprise RAG]] — their domain
- [[references/aief2025-when-vectors-break-down-sam-julien-writer|AIEF2025 talk]]
