---
title: "AGI Question Definition"
category: concepts
tags:
  - agi
  - epistemology
  - ai-research
  - aief2025
sources:
  - "AIEF2025 - Top Ten Challenges to Reach AGI — Stephen Chin, Andreas Kollegger - https://www.youtube.com/watch?v=ypyvj_56sBU"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agi-challenges|AGI Challenges]]"
    type: is_challenge_of
  - target: "[[concepts/ai-evaluation|AI Evaluation]]"
    type: relates_to
---

# AGI Question Definition

The deepest challenge to reaching AGI may not be technical at all: we might have all the tools needed to build AGI, but we may not even know what the right questions are. [[entities/stephen-chin|Stephen Chin]] presented this using Deep Thought from The Hitchhiker's Guide to the Galaxy — the supercomputer that spent 7.5 million years computing the Answer to Life, the Universe, and Everything (42), only to realize that nobody actually knows what the Question is. ^[extracted]

## The Deep Thought Problem

Deep Thought's famous answer of 42 was technically correct but practically useless because the actual Question was never properly defined. Chin's analogy suggests that the AI research community may be building toward AGI without having clearly defined what AGI actually means, what capabilities it requires, or what problems it should solve. ^[extracted]

## Why This Matters

This epistemological challenge is fundamental because: ^[inferred]

- **Without a clear question, progress is hard to measure** — If we don't know what AGI is, we cannot determine how close we are to it
- **Tool building without purpose** — We can build increasingly capable tools without knowing whether they address the right problems
- **Misaligned research directions** — Resources may be spent on solving the wrong problems while the real challenges go unaddressed
- **Definition dependency** — Different definitions of AGI (narrow vs. general, capability-based vs. behavior-based, functional vs. philosophical) lead to different research strategies

## GraphRAG and Question Definition

[[concepts/graphrag|GraphRAG]] could help by providing a structured knowledge base that captures the evolving understanding of what AGI means. Knowledge graphs can represent different definitions, their relationships, the evidence supporting each, and the open questions around each definition. This makes the conceptual landscape of AGI research explicit and navigable. ^[inferred]

## Related

- [[concepts/agi-challenges|AGI Challenges]] — the broader framework
- [[concepts/ai-evaluation|AI Evaluation]] — measuring progress toward AGI
- [[concepts/graphrag|GraphRAG]] — structured knowledge for conceptual clarity
- [[concepts/bitter-lesson|The Bitter Lesson]] — the lesson that general methods beat human-designed knowledge
