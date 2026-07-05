---
title: "Read-Write Workload Benchmarking"
category: concepts
tags:
  - benchmarking
  - vector-search
  - workload-modeling
  - performance
  - aief2025
sources:
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Most vector search benchmarks measure only read performance, but real-world workloads are read-write. Adding writes introduces index merges, segment management, and read-write ratio complexity that read-only benchmarks miss entirely."
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
  - target: "[[concepts/nightly-regression-benchmarking|Nightly Regression Benchmarking]]"
    type: related_to
---

# Read-Write Workload Benchmarking

Most published vector search benchmarks measure only **read-only** performance because read-only datasets are easier to reproduce and compare. However, real-world workloads are almost always **read-write**, and the addition of write operations introduces complexity that fundamentally changes performance characteristics. ^[extracted]

## Why Read-Only Benchmarks Dominate

Read-only benchmarks are simpler:

- Fixed dataset, no mutations during the test
- No index merge or segment management overhead
- Single, well-defined comparison point
- Easier to reproduce across different environments

This simplicity makes them attractive for marketing — "X is 40% faster than Y" — but they miss the complexity of actual production workloads. ^[extracted]

## What Writes Add to the Complexity

Adding write operations introduces multiple interacting factors:

1. **Index merges** — New documents trigger segment merges, which consume CPU and I/O
2. **Segment management** — Open/closing segments affects query performance
3. **Read-write ratio** — The balance between reads and writes dramatically affects throughput
4. **Memory pressure** — Writes consume memory that could otherwise serve queries
5. **Durability guarantees** — Sync points, translog, and commit operations add latency

Each of these factors has its own tunable parameters, and the interaction between them is non-linear. This is why most benchmarks avoid read-write scenarios — "there are so many parameters that you can do that most people just don't." ^[extracted]

## The Benchmark Gap

A read-only benchmark might show System A is 2x faster than System B. But under read-write workloads, System B might be faster due to better merge strategies, more efficient segment management, or superior memory handling. Without read-write benchmarks, this gap is invisible. ^[inferred]

## Related

- [[concepts/vector-search-limitations|Vector Search Limitations]] — structural differences in vector search behavior
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — benchmarks should cover real workloads
- [[concepts/nightly-regression-benchmarking|Nightly Regression Benchmarking]] — continuous testing catches workload-specific regressions
- [[concepts/benchmark-memes|Benchmark Memes]] — incomplete benchmarks mislead the community
