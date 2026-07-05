---
title: "LazyGraphRAG"
category: concepts
tags:
  - graphrag
  - retrieval
  - microsoft-research
  - performance
aliases:
  - Lazy GraphRAG
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.60
  inferred: 0.30
  ambiguous: 0.10
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: extends
  - target: "[[concepts/benchmark-qed|Benchmark QED]]"
    type: evaluated-on
---

# LazyGraphRAG

**LazyGraphRAG** is an evolution of [[concepts/graphrag|GraphRAG]] developed by the [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]]. It was announced at AI Engineer World's Fair 2025 with benchmark results demonstrating improved performance over the original GraphRAG implementation. ^[extracted]

## Status

At the time of the AIEF2025 talk, LazyGraphRAG was not yet publicly released. Larson indicated that a blog post and open-source release were imminent — scheduled for the day after the talk. ^[extracted]

## Known Characteristics

Larson did not disclose the specific mechanics of LazyGraphRAG in his talk, focusing instead on benchmark results. The name suggests a lazy evaluation strategy — potentially deferring graph construction or traversal until query time, which could reduce the upfront computational cost of building full knowledge graphs. ^[inferred]

This would address a well-known limitation of GraphRAG: the significant computational overhead of constructing knowledge graphs from large corpora. ^[inferred]

## Relationship to Benchmark QED

LazyGraphRAG's benchmark performance was evaluated on [[concepts/benchmark-qed|Benchmark QED]], which also went open source alongside the announcement. ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
