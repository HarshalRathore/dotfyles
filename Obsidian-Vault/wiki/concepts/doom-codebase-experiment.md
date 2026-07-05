---
title: "Doom Codebase Experiment"
category: concepts
tags:
  - graphrag
  - code-understanding
  - microsoft-research
  - demonstration
  - large-codebase
aliases:
  - Doom experiment
  - Doom GraphRAG demo
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag-code|GraphRAG for Code]]"
    type: demonstrates
  - target: "[[concepts/structural-vs-superficial-understanding|Structural vs. Superficial Understanding in Code]]"
    type: demonstrates
  - target: "[[concepts/multi-file-modification|Multi-File Modification Challenge]]"
    type: demonstrates
---

# Doom Codebase Experiment

The **Doom codebase experiment** was a large-scale demonstration of [[concepts/graphrag-code|GraphRAG for Code]] on the ~30-year-old Doom source code, consisting of approximately 100,000 lines across 231 files. ^[extracted]

## Why Doom?

[[entities/jonathan-larson|Jonathan Larson]] and his team initially worried that LLMs might already know Doom code from their training data, since Doom is a well-known, widely-documented codebase. They ran preliminary tests to assess this concern. ^[extracted]

**Finding:** LLMs *did* know Doom code — but only superficially. When asked to make meaningful modifications to the codebase, the models failed completely. This revealed that training data exposure does not equate to structural understanding. ^[extracted]

## Demonstrations on Doom

The team used GraphRAG on the Doom codebase to demonstrate three capabilities: ^[extracted]

1. **High-level documentation generation** — GraphRAG produced repository-level documentation describing entire modules (e.g., the sound system) by understanding 20-30 files simultaneously via global queries, with drill-down to file-level details via local queries
2. **Feature development** — The team added a jump mechanic to Doom (a feature the original game did not have). This required multi-file modification, which standard AI coding tools fail at because they edit one file well but break others. GraphRAG's repository-level understanding enabled coherent multi-file changes
3. **Code translation** — While the Python-to-Rust translation demo used the smaller 200-line game, the Doom experiment validated that GraphRAG scales to enterprise-sized codebases

## Significance

The Doom experiment demonstrated that GraphRAG for Code works at enterprise scale (100K lines, 231 files), not just on toy examples. The key insight was that even models trained on Doom code could not meaningfully modify it — structural understanding from a knowledge graph is the differentiator, not training data exposure. ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
