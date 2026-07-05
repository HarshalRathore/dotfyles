---
title: "Leto"
category: entities
tags:
  - agent-platform
  - deep-research
  - cloud-agents
  - rag
  - vendor
summary: Leto is a cloud agent provider used by 11x to build their deep research agent for Alice's knowledge base retrieval. Easy to build with; supports multi-step retrieval planning.
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/deep-research-agent]]"
    type: implements
  - target: "[[entities/alice-ai-sdr]]"
    type: uses
---

# Leto

Leto is a **cloud agent provider** that 11x uses to build their deep research agent for Alice's knowledge base retrieval.

## Usage in Alice's Knowledge Base

11x passes lead information to a Leto-powered agent, which:

1. **Plans** — Comes up with a retrieval plan containing one or many context retrieval steps
2. **Executes** — Makes tool calls to query the knowledge base (Pinecone)
3. **Synthesizes** — Summarizes results into clean Q&A format

## Characteristics

- Described by 11x as "really easy to build with"
- Supports the deep research agent pattern where the agent can go broad or deep depending on context needs
- Can evaluate whether additional retrieval is needed

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
