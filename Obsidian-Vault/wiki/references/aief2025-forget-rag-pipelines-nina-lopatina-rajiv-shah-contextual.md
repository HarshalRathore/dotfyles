---
title: 'AIEF2025 — Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual'
category: references
tags:
- aief2025
- rag
- contextual-ai
- managed-service
- enterprise-ai
- modular-platform
summary: Nina Lopatina and Rajiv Shah from Contextual AI demonstrate how to treat RAG as a managed service, showing their modular platform for production-ready RAG agents with no-code, developer, and modula...
sources:
- 'AIEF2025 - Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual - https://www.youtube.com/watch?v=lArgRvBV3tQ'
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/contextual-ai]]'
  type: related_to
- target: '[[entities/nina-lopatina]]'
  type: related_to
- target: '[[entities/rajiv-shah]]'
  type: related_to
- target: '[[concepts/rag-as-managed-service]]'
  type: related_to
---

# AIEF2025 — Forget RAG Pipelines—Build Production Ready Agents in 15 Mins

## Overview

Nina Lopatina and Rajiv Shah from **[[entities/contextual-ai|Contextual AI]]** presented at AI Engineer World's Fair 2025 on how to build production-ready RAG agents by treating RAG as a managed service rather than a custom-built pipeline. The talk combined conceptual framing with a live demonstration.

## Speakers

- **Rajiv Shah** — Chief evangelist at Contextual AI, previously at Hugging Face where he helped practitioners build RAG pipelines from open-source components
- **Nina Lopatina** — NLP/LLM engineer with 7-8 years of experience since the BERT era, in her fourth week at Contextual AI at the time of the talk

## Platform Architecture

Contextual's platform (app.contextual.ai) is organized into three tiers:

1. **No-code** — Opinionated defaults for business users who simply have documents and want to ask questions of them
2. **Developer** — Full orchestration and tweaking capabilities for developers building RAG pipelines, with control over querying, generation, and pipeline configuration
3. **Modular** — Individual component replacement for organizations that already have RAG pipelines but need to improve one specific piece (extraction, re-ranking, or retrieval)

The platform's core philosophy is that RAG should be treated like any other managed service — just as organizations don't train their own LLMs or build their own vector databases, they shouldn't need to orchestrate complex RAG infrastructure themselves. ^[extracted]

## Live Demonstration

Nina led a hands-on demonstration using:

- **NVIDIA financial statements** — Testing the platform's ability to perform quantitative reasoning over structured financial tables and data interpretation
- **Spurious correlation data** — Stress-testing the RAG system with data that contradicts conventional wisdom, evaluating whether the system retrieves actual relevant content rather than regurgitating expected patterns

## Key Technical Points

- **Single API key** — Contextual requires only one API key, contrasting with the "API scavenger hunt" of cobbling together open-source RAG components
- **Notebook access** — A Jupyter notebook and getting started guide are available at contextual.ai/AIE25
- **MCP integration** — The platform supports connecting RAG agents to external applications like Claude Desktop via the Model Context Protocol
- **Modular components** — Extraction, re-ranking, and retrieval can be used individually or as a complete managed service

## Founding Story

Contextual was founded by **Dow** and **Aman**, both from Meta's RAG research team. Dow authored the initial RAG paper and Aman worked alongside him. Rajiv Shah knew both from his time at Hugging Face where he helped people do RAG years ago on question-answer systems. The founders saw the need to change how the world builds RAG pipelines for enterprise use. ^[extracted]
