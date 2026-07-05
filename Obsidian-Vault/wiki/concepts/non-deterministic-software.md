---
title: "Non-Deterministic Software"
category: concepts
tags:
  - ai-agents
  - non-determinism
  - software-engineering
  - reliability
  - aief2025
aliases: [non-deterministic software, non-deterministic ai, ai non-determinism]
sources:
  - "[[sources/watchv=pthmdt92qng]]"
  - "[[sources/watchv=l8ooyedi_ls]]"
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.76
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/emergent-behavior-in-ai]]"
    type: relates_to
  - target: "[[concepts/agent-evaluations]]"
    type: requires
  - target: "[[concepts/demo-savvy-problem]]"
    type: causes
  - target: "[[concepts/reliability-over-intelligence]]"
    type: motivates
---

# Non-Deterministic Software

**Non-deterministic software** refers to systems whose behavior cannot be fully predicted from their inputs, because the underlying computation involves probabilistic or opaque components. LLM-based AI products are the primary example: the same input can produce different outputs, and the system may exhibit capabilities the builder never anticipated. ^[extracted]

## The LLM Opacity Problem

Ben Stein identifies a key distinction between traditional software and AI software: "You don't have to know what your database [does internally], but you generally know that it's like the surface area, the interface that's exposed. We don't understand this for the [LLM] models." ^[extracted]

With traditional software, the interface surface area is bounded and understood. With LLMs, the "surface area" is the full space of possible inputs and the full space of possible outputs — and the mapping between them is opaque. ^[inferred]

## Relationship to Evals

Non-determinism makes [[concepts/agent-evaluations|evals]] essential — they're the mechanism for understanding what the system actually does in practice. [[entities/ido-pesok|Ido Pesok]] (Vercel) illustrates this with the "demo-savvy" problem: an AI app can work perfectly in demo (tested twice) and fail in production with a single user query. ^[extracted]

## Implications for Product Management

Non-deterministic software requires [[concepts/affordance-thinking|affordance thinking]] because you can't fully specify behavior that you can't predict. It makes [[concepts/discover-functionality|discovering functionality]] the necessary product discovery method. ^[inferred]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
- [[references/aief2025-evals-are-not-unit-tests-ido-pesok-vercel-v0|AIEF2025 - Evals Are Not Unit Tests]]
