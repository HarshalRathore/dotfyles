---
title: Contextual Modular RAG
category: concepts
tags:
- rag
- modular
- extraction
- re-ranking
- retrieval
- platform
summary: Breaking RAG into modular components — extraction, re-ranking, retrieval — that can be used individually or as a complete managed service, allowing targeted improvements without rebuilding the pipe...
sources:
- 'AIEF2025 - Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual - https://www.youtube.com/watch?v=lArgRvBV3tQ'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/contextual-ai]]'
  type: related_to
- target: '[[concepts/rag-as-managed-service]]'
  type: related_to
- target: '[[concepts/production-rag-complexity]]'
  type: related_to
- target: '[[concepts/contextual-platform-approach]]'
  type: related_to
---

# Contextual Modular RAG

Contextual's modular RAG approach decomposes the RAG pipeline into discrete, independently usable components — primarily **extraction**, **re-ranking**, and **retrieval** — that can be consumed either as a complete managed service or as individual pieces integrated into existing pipelines. ^[extracted]

## Modular Components

The platform exposes RAG as a set of composable components rather than a monolithic pipeline:

- **Extraction** — Document parsing and content extraction from diverse formats
- **Retrieval** — Combined BM25 and vector-based document search
- **Re-ranking** — Precision improvement on retrieved results
- **Generation** — LLM-powered answer generation grounded in retrieved context

Each component can be used standalone to replace a single piece of an existing RAG pipeline, or the entire stack can be used as a managed service. ^[extracted]

## Contrast with Other Platforms

Many companies focus on specific pieces of the RAG stack rather than the full picture. Contextual's approach is to focus exclusively on RAG — all of RAG — rather than trying to be a general-purpose AI platform. ^[extracted] This allows them to build deeper, more reliable components for each piece of the RAG pipeline. ^[extracted]

## Use Cases

Modular RAG is particularly valuable for organizations that:

1. Already have RAG pipelines in production but need to improve one specific component
2. Want to evaluate different extraction or re-ranking strategies without rebuilding their entire pipeline
3. Need to integrate RAG capabilities into existing infrastructure without a full platform migration

This approach aligns with the broader **[[concepts/rag-as-managed-service|RAG as managed service]]** philosophy while providing flexibility for organizations that are not ready to migrate their entire RAG stack. ^[inferred]
