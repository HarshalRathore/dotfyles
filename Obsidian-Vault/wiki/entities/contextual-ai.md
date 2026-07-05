---
title: "Contextual AI"
category: entities
tags:
  - rag
  - ai
  - platform
  - enterprise
  - managed-service
summary: "AI company building a modular, production-ready RAG platform, founded by Dow and Aman from Meta's RAG research team. Focuses exclusively on RAG as a managed service for enterprise data."
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
  - target: "[[entities/rajiv-shah]]"
    type: related_to
  - target: "[[entities/nina-lopatina]]"
    type: related_to
  - target: "[[concepts/rag-as-managed-service]]"
    type: related_to
  - target: "[[entities/huggingface]]"
    type: related_to
---

# Contextual AI

Contextual AI is an AI company focused exclusively on building a modular, production-ready **[[concepts/rag-as-managed-service|RAG]]** platform for enterprise data. The company was founded by **Dow** and **Aman**, both of whom came from Meta where they worked extensively on RAG research — Dow authored the initial RAG paper and Aman worked alongside him. ^[extracted]

The company's core philosophy is that RAG should be treated as a managed service, analogous to how organizations no longer train their own large language models or build their own vector databases. ^[extracted] The platform is available at app.contextual.ai and requires only a single API key — a deliberate contrast to the "API scavenger hunt" that many developers face when cobbling together open-source RAG components. ^[extracted]

The team includes **Rajiv Shah** (chief evangelist, previously at Hugging Face), **Nina Lopatina** (NLP/LLM engineer with 7-8 years of experience since the BERT era), Matthew (platform engineer focused on scaling and backend infrastructure), and John (solution architect handling customer integrations). ^[extracted]

Contextual's platform offers three tiers: no-code (opinionated defaults for business users), developer-focused (orchestration and pipeline tweaking), and modular (individual component replacement for extraction, re-ranking, or retrieval). ^[extracted] Unlike other companies that focus on multiple AI areas, Contextual focuses exclusively on RAG.
