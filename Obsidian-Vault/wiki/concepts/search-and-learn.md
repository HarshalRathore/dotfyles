---
title: Search and Learn
category: concepts
tags:
- search
- learning
- ai-research
- scaling
- rich-sutton
- bitter-lesson
summary: 'The two general methods that Sutton''s Bitter Lesson identifies as consistently outperforming domain-knowledge approaches: search (exploring large spaces) and learning (system understanding its envi...'
sources:
- The Bitter Lesson — Rich Sutton - https://www.incompleteideas.net/IncIdeas/BitterLesson.html
- AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/bitter-lesson|The Bitter Lesson]]'
  type: described_by
- target: '[[concepts/inference-time-scaling|Inference-Time Scaling]]'
  type: maps_to
- target: '[[concepts/ai-engineering|AI Engineering]]'
  type: constrains
---

# Search and Learn

**Search and Learn** are the two general methods that **Rich Sutton** identifies in The Bitter Lesson as consistently outperforming approaches that incorporate human domain knowledge across 70 years of AI research.

## Search

Search means **exploring large spaces of possibilities** — not to be confused with retrieval or search engines. In Sutton's framing, it's the systematic exploration of solution spaces to find better outcomes. ^[extracted]

In modern LLM terminology, this maps to **inference-time scaling**: spending more compute at test time to find better answers through exploration (e.g., chain-of-thought reasoning, tree search, self-play). ^[inferred]

## Learning

Learning means **getting the system to understand its environment through experience**. The system discovers patterns, strategies, and representations without human specification. This is the core of reinforcement learning, representation learning, and self-supervised learning. ^[extracted]

## Why They Win

Both methods share a key property: they **leverage computation** rather than human knowledge. As compute power grows, these methods keep improving, while domain-knowledge-heavy approaches hit walls. ^[extracted]

## Omar Khattab's Reframing

Khattab argues that for AI engineers, the question isn't "how do we engineer search and learning?" but "searching for *what*?" and "learning *for what*?" The engineer's job is to define the right search space and learning objective, not to engineer the mechanics of search and learning themselves. ^[extracted]

## Related

- [[concepts/bitter-lesson|The Bitter Lesson]] — The principle these methods exemplify
- [[entities/rich-sutton|Rich Sutton]] — Who identified these as the winning methods
- [[concepts/inference-time-scaling|Inference-Time Scaling]] — Modern LLM mapping of search
- [[concepts/premature-optimization|Premature Optimization]] — The parallel risk of hard-coding
