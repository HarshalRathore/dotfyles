---
title: "Measurement-Driven Improvement"
category: concepts
tags:
  - measurement
  - improvement
  - evals
  - methodology
  - data-driven
  - ai-engineering
aliases:
  - measurement-driven-improvement
  - measure-to-manage
summary: "The principle that you can only manage what you measure — using fast, cheap, continuous measurement as the primary lever for systematic improvement of AI systems."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fast-evals|Fast Evals]]"
    type: uses
  - target: "[[concepts/empirical-embedding-selection|Empirical Embedding Selection]]"
    type: extends
  - target: "[[concepts/ai-iteration-loop|AI Iteration Loop]]"
    type: relates_to
---

# Measurement-Driven Improvement

**Measurement-driven improvement** is the principle that you can only manage what you measure, and that fast, cheap, continuous measurement is the primary lever for systematic improvement of AI systems. ^[extracted]

## Core Thesis

Attributed to Peter Drucker ("all of you are AI practitioners. You're all building stuff, and these questions probably resonate quite deeply with you. What chunking strategy should I use? Is my embedding model the best embedding model for my data?"), the principle states that without measurement, improvement is guesswork. ^[extracted]

## The Measurement Problem in AI

Traditional approaches to measuring AI system quality have fundamental limitations: ^[extracted]

- **Guess and cross your fingers** — No measurement at all
- **LLM-as-judge** — Expensive ($600, 3 hours) — prevents rapid iteration
- **Public benchmarks** — Overly clean data, doesn't reflect real-world usage

These approaches make experimentation slow and expensive, which kills the iteration loop necessary for improvement.

## The Solution: Fast Measurement

The key insight is that great measurement doesn't have to be complicated — it just has to be fast and cheap enough to enable continuous iteration. ^[extracted]

- **Speed** — Results in seconds, not hours
- **Cost** — Pennies, not hundreds of dollars
- **Frequency** — Run on every change, not just before releases

This enables a measurement-driven improvement loop: measure → analyze → change → measure again, at a pace that makes systematic improvement feasible.

## Two Axes of Measurement

The AIEF2025 talk structured measurement along two axes: ^[extracted]

1. **Inputs** — Measuring your retrieval system: embedding models, chunking strategies, query distributions
2. **Outputs** — Measuring your conversation data: implicit feedback, product insights, agent tooling needs

Both axes require measurement to improve, and both benefit from the fast-evals approach.

## When to Apply

- **Any AI system under active development** — Where you're iterating on retrieval, prompts, or agent behavior
- **Before committing to expensive changes** — Like re-embedding your entire corpus
- **When benchmark results don't match your intuition** — Empirical measurement resolves the discrepancy
- **When scaling from prototype to production** — You need systematic quality measurement, not gut feel

## Related

- [[concepts/fast-evals|Fast Evals]] — The primary tool for fast measurement of retrieval systems
- [[concepts/empirical-embedding-selection|Empirical Embedding Selection]] — Application of measurement-driven improvement to model selection
- [[concepts/conversation-output-analysis|Conversation Output Analysis]] — Measurement of outputs at scale
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The operational cycle that measurement enables
- [[entities/jeff-huber|Jeff Huber]] — Primary advocate of this approach at AIEF2025
