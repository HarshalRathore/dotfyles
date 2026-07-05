---
title: "Contextual Platform Approach"
category: concepts
tags:
  - rag
  - platform
  - no-code
  - developer-experience
  - modular
summary: "Contextual AI's three-tier platform approach: no-code for business users, developer-focused for pipeline orchestration, and modular for replacing single RAG components."
sources:
  - "AIEF2025 - Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual - https://www.youtube.com/watch?v=lArgRvBV3tQ"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/contextual-ai]]"
    type: related_to
  - target: "[[concepts/rag-as-managed-service]]"
    type: related_to
  - target: "[[concepts/contextual-modular-rag]]"
    type: related_to
  - target: "[[concepts/production-rag-complexity]]"
    type: related_to
---

# Contextual Platform Approach

Contextual AI's platform (available at app.contextual.ai) is designed around three distinct tiers, each targeting a different user persona and level of RAG sophistication. ^[extracted]

## Tier 1: No-Code

The no-code tier provides opinionated defaults for business users who have documents and want to ask questions of them. No pipeline configuration, no model selection, no embedding strategy — just upload documents and query. This tier embodies the managed service philosophy by abstracting away all RAG complexity. ^[extracted]

## Tier 2: Developer

The developer tier provides full orchestration and tweaking capabilities for practitioners who know what they want in their RAG pipeline. Users can customize querying strategies, generation parameters, and pipeline configuration. This tier is designed for developers who are spending time evaluating and iterating on their RAG systems. ^[extracted]

## Tier 3: Modular

The modular tier allows organizations to replace just one component of an existing RAG pipeline. If extraction is working poorly, re-ranking needs improvement, or retrieval quality is suboptimal, the platform provides individual components that can be dropped into existing infrastructure. This tier addresses organizations that already have RAG pipelines in production but need better performance in specific areas. ^[extracted]

## Platform Philosophy

All three tiers share a common philosophy: RAG should be treated as a managed service. The platform requires only a single API key and handles extraction, BM25 retrieval, re-ranking, and generation internally — eliminating the "API scavenger hunt" that many developers face when building RAG from open-source components. ^[extracted]
