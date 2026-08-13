---
title: GraphRAG Methods to Create Optimized LLM Context Windows for Retrieval
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
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
- "https://x.com/i/status/2084018136437985417"
- "https://video.twimg.com/amplify_video/2084017844644175872/vid/avc1/1920x1080/ulwbPatVcvxMIoCb.mp4"
provenance:
  extracted: 0.93
  inferred: 0.04
  ambiguous: 0.03
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[entities/jonathan-larson|Jonathan Larson]]'
  type: presented-by
- target: '[[entities/aief2025|AI Engineer World''s Fair 2025]]'
  type: presented-at
- target: '[[entities/microsoft|Microsoft]]'
  type: affiliated-with
- target: '[[concepts/lazy-graphrag|LazyGraphRAG]]'
  type: related_to
- target: '[[misc/web-x-com-i-status-2084018136437985417|LazyGraphRAG X post]]'
  type: derived_from
summary: "Jonathan Larson's AIEF2025 talk: GraphRAG for code (game QA, Python-to-Rust, Doom feature dev), Benchmark QED (AutoQ/AutoE/AutoD), and LazyGraphRAG's 92/90/91% wins over vector RAG at 8k/120k/1M tokens at a tenth of the cost."
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

- **Benchmark QED** — A new evaluation benchmark that went open source alongside the talk. A Microsoft blog post was scheduled for the day after the talk. ^[extracted] Its three components (from the talk's X-clip transcript): **AutoQ** generates queries across a local/global × data-driven/activity-driven spectrum (data-local questions like "why are junior doctors in South Korea striking in February 2024?" vs activity-global questions with nothing to pivot on for embedding); **AutoE** evaluates query performance with an LLM-as-judge; **AutoD** handles dataset summarization and sampling. ^[extracted]
- **LazyGraphRAG** — An evolution of GraphRAG with improved benchmark performance. Larson did not disclose the specific mechanics, focusing instead on benchmark results. Blog post and open-source release were imminent. ^[extracted]

## LazyGraphRAG Benchmark Results (from the X clip)

The X-posted clip of the talk captures the benchmark segment with the actual numbers: ^[extracted]

- LazyGraphRAG beat vector RAG at **8k, 120k, and a full million-token context window**, winning **92%, 90%, and 91%** of data-local questions respectively — "the exact place plain RAG was supposed to be strong."
- Long context windows did not help: the million-token run was expected to gain on global questions, but LazyGraphRAG still dominated.
- LazyGraphRAG ran at **a tenth of the cost** of the million-token context run.

Larson closes with a graph-based scientific co-reasoning demonstration (hypothesis → experiment → learning → knowledge) whose answers are powered by GraphRAG and LazyGraphRAG, and the takeaway: "LLM memory with structure is a really, really powerful tool." ^[extracted]

The clip (14:48, remote ASR, 15 chunks) is the same talk already sourced from YouTube; it confirms the post's numbers and adds the QED component details above. ^[extracted]

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
