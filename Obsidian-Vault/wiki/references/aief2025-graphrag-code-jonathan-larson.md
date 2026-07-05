---
title: "GraphRAG Methods to Create Optimized LLM Context Windows for Retrieval"
category: references
tags:
  - graphrag
  - code-understanding
  - microsoft-research
  - aief2025
  - talk
  - benchmark
  - lazy-graphrag
  - benchmark-qed
aliases:
  - GraphRAG for Code talk
  - Jonathan Larson AIEF2025 talk
  - GraphRAG context windows talk
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/jonathan-larson|Jonathan Larson]]"
    type: presented-by
  - target: "[[entities/aief2025|AI Engineer World's Fair 2025]]"
    type: presented-at
  - target: "[[entities/microsoft|Microsoft]]"
    type: affiliated-with
---

# GraphRAG Methods to Create Optimized LLM Context Windows for Retrieval

## TL;DR

Jonathan Larson, lead of the GraphRAG team at [[entities/microsoft|Microsoft Research]], demonstrated [[concepts/graphrag|GraphRAG]] applied to code repositories at AI Engineer World's Fair 2025. He showed GraphRAG's superiority over standard RAG for repository-level code understanding, demonstrated Python-to-Rust code translation, and feature development on the 30-year-old Doom codebase (~100K lines, 231 files). He also announced two new developments: [[concepts/benchmark-qed|Benchmark QED]] (open source, with blog post scheduled for the next day) and [[concepts/lazy-graphrag|LazyGraphRAG]] (imminent release, with improved benchmark performance). ^[extracted]

## Problem & Motivation

Standard RAG fails at repository-level code understanding. When asked to describe a 200-line terminal game across 7 files, standard RAG returns a generic, useless answer. The root cause: vector-based retrieval cannot aggregate semantic understanding across multiple files where no single file contains the complete picture. ^[extracted]

## Method & Architecture

Larson demonstrated GraphRAG for Code across three increasingly complex scenarios: ^[extracted]

1. **200-line terminal game (7 files)** — Built by one of Larson's engineers, deliberately chosen as small enough for humans to know ground truth but complex enough to confuse LLMs given raw code. GraphRAG correctly described game mechanics (player jumping, horizontal obstacles, keyboard controls) vs. standard RAG's generic "it's a game" answer. This is a [[concepts/local-global-queries|global query]] requiring understanding of the entire repository.

2. **Python to Rust translation** — Standard LLM approach: feed source files directly → generates non-compilable Rust. GraphRAG approach: build knowledge graph → use translate function → generates compilable Rust across all files. ^[extracted]

3. **Doom codebase (100K lines, 231 files)** — GraphRAG generated high-level documentation (sound system, module descriptions), enabled feature development (adding jump mechanic requiring multi-file modification), and supported drill-down to file-level details via local queries. Larson noted that LLMs trained on Doom code still failed at meaningful modifications, proving that structural understanding (not just training data exposure) is the key differentiator. ^[extracted]

## Key Equations

N/A — this is a systems/demonstration talk, not a theoretical paper. ^[extracted]

## Results

| Scenario | Standard RAG | GraphRAG for Code |
|---|---|---|
| Game description (200 lines) | "It's a game configured through main function" | Precise: player jumps, obstacles move horizontally, space bar control |
| Python→Rust translation | Non-compilable code | Compilable Rust across all files |
| Doom docs (100K lines) | Not demonstrated | High-level module docs + drill-down capability |
| Feature addition (Doom jump) | Breaks other files | Coherent multi-file modification |

## New Announcements

- **Benchmark QED** — A new evaluation benchmark that went open source alongside the talk. A Microsoft blog post was scheduled for the day after the talk. ^[extracted]
- **LazyGraphRAG** — An evolution of GraphRAG with improved benchmark performance. Larson did not disclose the specific mechanics, focusing instead on benchmark results. Blog post and open-source release were imminent. ^[extracted]

## Limitations

- LazyGraphRAG details were not disclosed — only benchmark results were shown ^[extracted]
- Benchmark QED specifics were not detailed in the talk ^[extracted]
- The Doom experiments noted that LLMs trained on Doom code still failed at meaningful modifications, suggesting structural understanding (not just training data exposure) is the key differentiator ^[extracted]

## Related Pages

- [[concepts/graphrag|GraphRAG]] — the underlying architecture
- [[concepts/graphrag-code|GraphRAG for Code]] — the code-specific application
- [[concepts/local-global-queries|Local and Global Queries in GraphRAG]] — the query paradigm
- [[concepts/lazy-graphrag|LazyGraphRAG]] — the announced evolution
- [[concepts/benchmark-qed|Benchmark QED]] — the evaluation benchmark
- [[concepts/structural-vs-superficial-understanding|Structural vs. Superficial Understanding in Code]] — the key insight from Doom experiments
- [[concepts/doom-codebase-experiment|Doom Codebase Experiment]] — the large-scale demonstration
- [[entities/jonathan-larson|Jonathan Larson]] — the speaker

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
