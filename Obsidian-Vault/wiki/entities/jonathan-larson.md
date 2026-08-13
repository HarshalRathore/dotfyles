---
title: Jonathan Larson
category: entities
tags:
- person
- microsoft
- graphrag
- microsoft-research
aliases:
- Jonathan Larson (Microsoft)
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
- "https://x.com/i/status/2084018136437985417"
- "https://video.twimg.com/amplify_video/2084017844644175872/vid/avc1/1920x1080/ulwbPatVcvxMIoCb.mp4"
provenance:
  extracted: 0.92
  inferred: 0.05
  ambiguous: 0.03
base_confidence: 0.87
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[entities/microsoft|Microsoft]]'
  type: works-for
- target: '[[concepts/graphrag|GraphRAG]]'
  type: leads-team
- target: '[[concepts/lazy-graphrag|LazyGraphRAG]]'
  type: works-on
- target: '[[references/aief2025-graphrag-code-jonathan-larson]]'
  type: derived_from
summary: "Lead of the GraphRAG team at Microsoft Research; presented GraphRAG for code, Benchmark QED, and LazyGraphRAG's 92/90/91% wins over vector RAG at 8k/120k/1M tokens at a tenth of the cost."
---

# Jonathan Larson

Jonathan Larson is the lead of the [[concepts/graphrag|GraphRAG]] team at [[entities/microsoft|Microsoft Research]]. ^[extracted]

## GraphRAG Paper and GitHub

Larson's team published the original GraphRAG paper and released an open-source GitHub repository that garnered significant community attention. The release inspired numerous derivative implementations, including work by [[entities/neo4j|Neo4j]] on board-game-style knowledge exploration, which Larson described as one of his favorites given his passion for board games. ^[extracted]

## GraphRAG for Code

At AI Engineer World's Fair 2025, Larson presented GraphRAG applied to the coding domain, demonstrating repository-level code understanding, code translation (Python to Rust), and feature development on the 30-year-old Doom codebase (~100K lines, 231 files). ^[extracted]

## Recent Announcements

Larson announced two new developments at AIEF2025:

- **Benchmark QED** — a new benchmark that went open source alongside the talk, with a blog post scheduled for the following day. Its components: AutoQ (query generation across local/global × data-driven/activity-driven), AutoE (LLM-as-judge evaluation), AutoD (dataset summarization/sampling). ^[extracted]
- **LazyGraphRAG** — an evolution of GraphRAG with improved benchmark performance. Larson did not disclose the specific mechanics in his talk, focusing instead on benchmark results. ^[extracted] From the talk's X-clip transcript: LazyGraphRAG beat vector RAG at 8k/120k/1M token contexts, winning 92%/90%/91% of data-local questions, and ran at a tenth of the cost of the million-token run. ^[extracted]

## Personal Interests

Larson described himself as "a huge board game fanatic," and specifically praised Neo4j's board-game-style knowledge exploration as one of his favorite derivative works inspired by the GraphRAG paper. ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
