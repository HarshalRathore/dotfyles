---
title: LazyGraphRAG
category: concepts
tags:
- graphrag
- retrieval
- microsoft-research
- performance
aliases:
- Lazy GraphRAG
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
- "https://x.com/i/status/2084018136437985417"
- "https://video.twimg.com/amplify_video/2084017844644175872/vid/avc1/1920x1080/ulwbPatVcvxMIoCb.mp4"
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.68
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: extends
- target: '[[concepts/benchmark-qed|Benchmark QED]]'
  type: evaluated-on
- target: '[[references/aief2025-graphrag-code-jonathan-larson]]'
  type: derived_from
- target: '[[concepts/memory-engineering]]'
  type: related_to
summary: "Microsoft Research's lazy evolution of GraphRAG: beat vector RAG on 8k/120k/1M token contexts (92/90/91% on data-local questions) at a tenth of the million-token run's cost; mechanics not disclosed."
---

# LazyGraphRAG

**LazyGraphRAG** is an evolution of [[concepts/graphrag|GraphRAG]] developed by the [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]]. It was announced at AI Engineer World's Fair 2025 with benchmark results demonstrating improved performance over the original GraphRAG implementation. ^[extracted]

## Status

Announced at AI Engineer World's Fair 2025 with a blog post the following day and an open-source release; the talk references an earlier November blog post about it, and one reader notes LazyGraphRAG dates from 2024 while the talk is from 2025. ^[extracted] ^[ambiguous]

## Benchmark Results (QED)

Larson's talk reports LazyGraphRAG compared against vector RAG at 8k, 120k, and a full million-token context window on the [[concepts/benchmark-qed|Benchmark QED]] suite: ^[extracted]

- **92%, 90%, and 91% win rates on data-local questions** against the 8k/120k/1M vector-RAG baselines respectively — the category where plain RAG was expected to be strongest.
- **Long context windows did not help**: the million-token run was expected to gain on global questions but LazyGraphRAG still dominated those metrics.
- **A tenth of the cost** of the million-token context run.

The lesson drawn: "a bigger context window is not memory, structured memory is" — structure beats volume. ^[extracted] ^[inferred]

## Known Characteristics

Larson did not disclose the specific mechanics of LazyGraphRAG in the talk ("I won't be going into the specifics of how it works"), focusing on benchmark results. The name suggests a lazy evaluation strategy — potentially deferring graph construction or traversal until query time, which could reduce the upfront computational cost of building full knowledge graphs. ^[inferred]

This would address a well-known limitation of GraphRAG: the significant computational overhead of constructing knowledge graphs from large corpora. ^[inferred]

## Relationship to Benchmark QED

LazyGraphRAG's benchmark performance was evaluated on [[concepts/benchmark-qed|Benchmark QED]], which also went open source alongside the announcement. QED generates questions across a local/global × data-driven/activity-driven spectrum (AutoQ), evaluates with an LLM judge (AutoE), and summarizes/samples datasets (AutoD). ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
