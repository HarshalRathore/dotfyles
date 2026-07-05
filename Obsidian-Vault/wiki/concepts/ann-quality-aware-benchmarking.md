---
title: "ANN Quality-Aware Benchmarking"
category: concepts
tags:
  - vector-search
  - benchmarking
  - precision-recall
  - approximate-nearest-neighbor
  - hnsw
  - aief2025
sources:
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Benchmarks for approximate nearest neighbor search must include precision and recall metrics alongside performance. Without quality measures, speed comparisons are meaningless — faster systems may return worse results."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vector-search-limitations|Vector Search Limitations]]"
    type: extends
  - target: "[[concepts/benchmark-design-principles|Benchmark Design Principles]]"
    type: related_to
  - target: "[[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]]"
    type: related_to
---

# ANN Quality-Aware Benchmarking

**ANN quality-aware benchmarking** is the practice of measuring both performance (latency, throughput) and result quality (precision, recall) when benchmarking approximate nearest neighbor vector search systems. Without quality metrics, performance-only benchmarks are misleading. ^[extracted]

## The Quality-Performance Tradeoff

In approximate nearest neighbor search, result quality is controlled by search parameters — specifically, how widely the algorithm searches. A narrower search is faster but may miss relevant results (lower recall). A wider search finds more relevant results but takes longer. ^[extracted]

Different systems expose different parameter spaces, and different implementations have different default behaviors. Comparing two systems' latencies without comparing their result quality is like comparing two cars' top speeds without checking if one has a broken speedometer. ^[inferred]

## Why Quality Metrics Are Often Omitted

Krenn observed that even experienced teams sometimes publish benchmarks without precision and recall metrics. The reasons include:

1. **Complexity** — Adding quality metrics makes benchmarks harder to present and compare
2. **Implicit assumption** — In Boolean search, results either match or don't; there's no quality dimension. This intuition doesn't transfer to ANN search. ^[extracted]
3. **Convenience** — Quality-aware benchmarks require ground truth datasets and more computation

The consequence: "you can produce crap results very quickly" and still appear faster in a performance-only benchmark. ^[extracted]

## The Minimal Quality-Aware Benchmark

A quality-aware benchmark should report:

- **Precision@K** — what fraction of the top-K results are relevant
- **Recall@K** — what fraction of all relevant results appear in the top-K
- **Latency** — query response time at various K values
- **Throughput** — queries per second at various concurrency levels
- **Parameter configuration** — search width, other ANN parameters used

Without this, a benchmark cannot distinguish between a system that returns good results fast and one that returns bad results fast. ^[inferred]

## Related

- [[concepts/vector-search-limitations|Vector Search Limitations]] — why vector search has unique failure modes
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — multi-faceted evaluation is principle #1
- [[concepts/benchmark-memes|Benchmark Memes]] — how incomplete benchmarks mislead the community
- [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]] — similarity does not guarantee relevance
