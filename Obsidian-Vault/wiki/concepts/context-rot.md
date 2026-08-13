---
title: Context Rot
category: concepts
tags:
- context-rot
- agent-memory
- long-horizon
- memory-harness
- local-models
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
- 'https://www.trychroma.com/research/context-rot'
summary: Two distinct senses of context rot — agent-level forgetting over long task horizons (Meter/AIEF framing) and token-level LLM performance degradation as input length grows (Chroma's 18-model report). Both make context management and memory harnesses load-bearing.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
relationships:
  - target: '[[concepts/memory-harness]]'
    type: relates_to
  - target: '[[entities/meter]]'
    type: related_to
---

# Context Rot

**Context rot** is the degradation of agent performance over long task horizons caused by forgetting earlier context. An agent forgets what it did, drifts from its original questions, or loses track of the task state as the sequence extends beyond the context window. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Convergence Problem

From recent projections by **Meter**, two trends are colliding: ^[extracted]

1. **Longer horizon tasks** — The trend is to solve longer and longer horizon tasks
2. **Fewer model releases** — Model releases are becoming less frequent

> "At some point later this year, we're going to have this convergence, right? Where we'll get many more long-term horizon tasks and fewer model releases. So that makes this issue of dealing with context rot a priority." ^[extracted]

This convergence means models will not be refreshed frequently enough to paper over memory issues with larger context windows. Memory harnesses — not model upgrades — become the primary solution.

## The XBench Evidence

The XBench benchmark demonstrates context rot concretely: ^[extracted]

- A question's correct answer is at step 124
- The question is asked at step 500
- The relevant context is completely outside the context window
- The model must use a memory harness to retrieve the specific answer from the right step

When running tests across 68 questions with multiple cells and seeds, **ranked recall (decisions ledger)** consistently outperformed no-memory and vector RAG baselines. ^[extracted]

## Why Memory Helps (And When It Doesn't)

When the task fits entirely within the context window, memory harnesses add cost without capability gain — performance is identical with or without memory. ^[extracted]

But when context does not fit, a good memory harness is essential. Bad memory is expensive: it spends more tokens and can send the agent in the wrong direction. A good structural policy for recall saves tokens and budget. ^[extracted]

## 2026-08-13: The Two Senses of Context Rot

"Context rot" names two related but distinct phenomena in this vault — keep them separate: ^[inferred]

1. **Agent-level context rot** (this page's original framing): the agent *forgets* what it did as the session extends beyond the context window — drift from the original question, lost task state. Solution: memory harnesses. ^[extracted]
2. **Token-level context rot** ([[references/chroma-context-rot-report|Chroma's technical report]], 2025-07): LLM performance degrades *as input length grows even when everything fits* — 18 models, non-uniform decline on semantically-oriented tasks (low needle-question similarity, distractors, haystack structure). Solution: keep contexts smaller — compact, don't accumulate. ^[extracted]

The two senses compound: long-horizon agents that stuff more context instead of compacting pay both costs. [[misc/web-earendil-com-posts-compaction-in-pi|Pi's compaction post]] cites the Chroma report directly as the reason "just keep more context" is not free. ^[extracted]

## Related

- [[concepts/memory-harness]] — The primary solution to context rot
- [[concepts/agent-memory-knowledge|Agent Memory & Knowledge]] — Broader agent memory concept
- [[misc/wf2026]] — Conference where this was presented
- [[entities/meter]] — The company providing the projections

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
