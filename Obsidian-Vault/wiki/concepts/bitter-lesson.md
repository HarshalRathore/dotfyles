---
title: The Bitter Lesson
category: concepts
tags:
- bitter-lesson
- scaling
- search
- learning
- ai-research
- rich-sutton
- domain-knowledge
summary: 'AI research insight: general methods leveraging computation (search + learning) consistently outperform approaches incorporating human domain knowledge. Hard-coded knowledge becomes a liability as...'
sources:
- The Bitter Lesson — Rich Sutton - https://www.incompleteideas.net/IncIdeas/BitterLesson.html
- AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/rich-sutton|Rich Sutton]]'
  type: authored_by
- target: '[[concepts/search-and-learn|Search and Learn]]'
  type: described_by
- target: '[[concepts/premature-optimization|Premature Optimization]]'
  type: related_to
- target: '[[concepts/ai-engineering|AI Engineering]]'
  type: constrains
---

# The Bitter Lesson

**The Bitter Lesson** is a principle from AI research, articulated by **Rich Sutton** (Turing Award winner and reinforcement learning pioneer) in an influential essay six years old as of 2025. It states that 70 years of AI research has consistently shown that **general methods leveraging computation** outperform approaches that hard-code human domain knowledge.

## Core Insight

When AI researchers encode domain expertise into their systems (e.g., chess heuristics, translation rules), they build methods that:

1. Work well initially but don't scale
2. Get stuck as problems grow
3. Are consistently beaten by methods using less domain knowledge but more computation

The two general methods that have won:

- **Search**: exploring large spaces of possibilities (maps to inference-time scaling in LLMs)
- **Learning**: getting the system to understand its environment through experience ^[extracted]

## Omar Khattab's Reframing for AI Engineering

Khattab's AIEF 2025 talk resolves a tension: if domain knowledge is bad, what is AI engineering about? ^[extracted]

**Two different goals, two different lessons:**

| Goal | Approach | Bitter Lesson Applies? |
|------|----------|----------------------|
| Building intelligence (AI research) | Maximize ability to figure things out fast | Yes — don't hard-code |
| Building reliable software (AI engineering) | Create robust, controllable, scalable systems | Reframed — subtract agency in the right places |

We don't build software because we lack AGI. We have billions of unreliable general intelligences already. We build software because we need systems that are reliable, robust, controllable, and scalable. Engineering is about **subtracting agency and intelligence in exactly the right places**, not restricting intelligence everywhere. ^[extracted]

## The Software Engineering Parallel

Khattab draws a parallel to Donald Knuth's "premature optimization is the root of all evil" from structured programming. Domain knowledge isn't harmful — it's harmful when applied **prematurely**, constraining the system based on poor understanding. ^[extracted]

## Practical Takeaway

Search and learning work best when you search *for the right thing* and learn *for the right purpose*. AI engineering is about engineering **what the system should do** and **what it should learn**, not about engineering the specifics of search and learning itself. ^[extracted]

## Application to Search: Neural RAG

Will Bryk (Exa.ai) applies the Bitter Lesson to search: rather than hard-coding search algorithms based on human behavior (keyword matching, PageRank), use transformers and scaling to build a search engine that learns to understand queries at a deep semantic level. More compute and more quality data consistently improve neural search results. ^[inferred]

## Related

- [[entities/rich-sutton|Rich Sutton]] — Author of The Bitter Lesson
- [[entities/omar-khattab|Omar Khattab]] — Reframed for AI engineering
- [[concepts/search-and-learn|Search and Learn]] — The two winning general methods
- [[concepts/premature-optimization|Premature Optimization]] — Knuth's parallel insight
- [[concepts/agi-vs-software|AGI vs Software Engineering]] — The distinction at the heart of the reframing
- [[concepts/neural-rag|Neural RAG]] — Will Bryk's application of the Bitter Lesson to search
