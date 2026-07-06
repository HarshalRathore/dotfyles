---
title: 'Context Philosophy: What vs How Much'
category: concepts
tags:
- context
- llm-context
- ai-coding
- windsurf
- context-engineering
aliases:
- Context Philosophy
- What vs How Much Context
sources:
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/context-over-models]]'
  type: extends
- target: '[[concepts/heuristics-vs-hard-evidence-context]]'
  type: encompasses
- target: '[[concepts/context-relevance-over-size]]'
  type: encompasses
- target: '[[concepts/user-state-and-codebase-state]]'
  type: encompasses
summary: 'Context Philosophy: What vs How Much'
---

# Context Philosophy: What vs How Much

**Context Philosophy: What vs How Much** is the framework for understanding how AI coding agents should manage context, articulated by Sam Fertig of [[entities/windsurf|Windsurf]] at AI Engineer World's Fair 2025. ^[extracted]

## The Two Pillars

### What Context

"What context" asks: **what information is relevant to the current task?** Windsurf divides context into two buckets:

1. **Heuristics (user state)** — behavioral signals: code around the cursor, open files, recently opened/closed files in order, clipboard content, terminal activity, and inferred intent.
2. **Hard Evidence (codebase state)** — structural signals: code, documentation, rules, memories, and repository content.

The formula: **relevant output = prompt + codebase state + user state**. ^[extracted]

### How Much

"How much" asks: **how much of that context should be included in the LLM call?** The naive approach — just make the context window bigger — was effective for a while but has diminishing returns. The better strategy is optimizing for **relevance** of what goes into the window, not volume. ^[extracted]

This also serves latency optimization, which is a core feature of good AI coding agents, not merely a user preference. ^[extracted]

## Relationship to Context Over Models

This philosophy extends the [[concepts/context-over-models|Context Over Models]] principle by providing a concrete framework: context quality is a two-dimensional problem (what + how much), not a single axis of "more context = better." ^[inferred]

## Related Pages

- [[concepts/context-over-models]] — The broader principle that context matters more than model capability
- [[concepts/heuristics-vs-hard-evidence-context]] — The two buckets within "what context"
- [[concepts/context-relevance-over-size]] — The "how much" pillar
- [[concepts/user-state-and-codebase-state]] — The formula within "what context"
