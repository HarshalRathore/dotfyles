---
title: Benchmark QED
category: concepts
tags:
- benchmark
- evaluation
- graphrag
- microsoft-research
- open-source
aliases:
- QED Benchmark
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.7
  inferred: 0.2
  ambiguous: 0.1
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: evaluates
- target: '[[concepts/lazy-graphrag|LazyGraphRAG]]'
  type: evaluates
- target: '[[concepts/rag-evaluation|RAG Evaluation]]'
  type: related_to
summary: Benchmark QED
---

# Benchmark QED

**Benchmark QED** is an evaluation benchmark developed by the [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]] for measuring the quality of GraphRAG-based retrieval systems. ^[extracted]

## Announcement

Benchmark QED went open source at the same time as the AIEF2025 talk by Jonathan Larson on GraphRAG methods for optimized LLM context windows. It was announced alongside the [[concepts/lazy-graphrag|LazyGraphRAG]] technology, with a Microsoft blog post scheduled for the day after the talk. ^[extracted]

## Purpose

The benchmark evaluates retrieval quality in GraphRAG systems — specifically how well different GraphRAG approaches (including the original GraphRAG and the newer LazyGraphRAG) create optimized context windows for retrieval tasks. ^[inferred]

Given GraphRAG's claim of superior retrieval quality over vector-only RAG (particularly for global queries requiring cross-document synthesis), Benchmark QED likely provides standardized test cases that measure:

- Retrieval accuracy for global vs. local queries
- Context window optimization (relevance vs. token efficiency)
- Cross-file/cross-document reasoning quality ^[inferred]

## Relationship to LazyGraphRAG

LazyGraphRAG's improved benchmark performance was demonstrated on Benchmark QED, suggesting the benchmark captures dimensions where the lazy evaluation approach outperforms standard GraphRAG construction. ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
