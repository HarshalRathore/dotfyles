---
title: "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic"
tags:
  - vector-search
  - benchmarking
  - hnsw
  - precision-recall
  - evaluation
  - aief2025
  - elastic
sources:
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Philipp Krenn (Elastic) dissects common flaws in vector search benchmarks — cherry-picked scenarios, read-only bias, ignored quality metrics, and selective versioning — and advocates for automated nightly benchmarks to catch regressions."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vector-search-limitations|Vector Search Limitations]]"
    type: related_to
  - target: "[[concepts/benchmark-memes|Benchmark Memes]]"
    type: related_to
  - target: "[[concepts/hybrid-search|Hybrid Search]]"
    type: related_to
  - target: "[[entities/elastic|Elastic]]"
    type: related_to
  - target: "[[entities/philipp-krenn|Philipp Krenn]]"
    type: related_to
---

# AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic

> Talk at AI Engineer World's Fair 2025. Philipp Krenn (Developer Advocate, Elastic) dissects the systemic flaws in vector search benchmarks and explains why vendor-published benchmarks are almost always misleading.

## Summary

Philipp Krenn presents a critical examination of how vector search benchmarks are produced, revealing that nearly every vendor can claim to be both faster and slower than their competitors depending on scenario design. The core thesis: **most vector search benchmarks are not reproducible, not representative, and often unintentionally biased** — making them marketing tools rather than decision-making aids.

## Common Benchmark Flaws

### 1. Cherry-Picked Scenarios

Benchmarks are designed around a scenario the author likes — often one that favors their own system. This is the "similar conditions" comic: comparing two systems where one clearly wins because the scenario was tuned to its strengths. Marketing teams run multiple scenarios, pick the one where "we're up and they're down," then generalize that single data point to claim "we're 40% faster on everything." ^[extracted]

### 2. Read-Only Bias

Most published benchmarks use read-only datasets because they're easier to reproduce and compare. But real-world workloads are read-write. Adding write operations introduces complexity — index merges, segment management, read-write ratio tuning — that most benchmarks ignore entirely. ^[extracted]

### 3. Ignoring Quality Metrics

For approximate nearest neighbor (ANN) search, result quality varies with search parameters (how widely to search). Precision and recall are frequently omitted from benchmarks because including them complicates the comparison. Without quality metrics, a system can produce "crap results very quickly" and still appear faster. ^[extracted]

### 4. Selective Version Updating

Benchmark authors typically update their own software to the latest version but don't update competitors' software. A benchmark might compare a vendor's current release against a competitor's version from 18 months prior — an unavoidable convenience that skews results. ^[extracted]

### 5. Configuration Bias

Even unintentionally, benchmark authors tune configurations (shard size, memory allocation, instance sizing, compression) for their own system. These include shard size, total data size, memory fit, compression settings, and data access patterns — "a ton of different ways" to tilt results. ^[extracted]

### 6. The HNSW Filtering Paradox

A counterintuitive finding specific to vector search: **filtering makes HNSW slower**. In traditional databases, a restrictive filter reduces the search space and speeds things up. In ANN search, a filter forces the algorithm to examine many more candidates before finding the ones that pass — requiring more sophisticated optimizations. This creates another lever for scenario tuning. ^[extracted]

### 7. Creative Statistics

Krenn describes a case where 20 data points were measured, 18-19 showed similar performance, then one edge case (e.g., ascending vs descending sort on one data type) was 10x faster. The outlier was used to "even out" the statistics and produce a headline claiming "5x faster overall." ^[extracted]

### 8. Non-Reproducible Data

Many benchmarks don't publish enough detail for others to reproduce the results — missing data, configurations, or code. Without reproducibility, benchmarks are unverifiable claims. ^[extracted]

## The Solution: Nightly Automated Benchmarks

Krenn describes Elastic's internal approach: **nightly benchmarks** that run every night, comparing each day's changes against the previous baseline. This catches the "slow boiling frog" problem — gradual performance degradation that goes unnoticed when benchmarks are run ad hoc. ^[extracted]

## Key Takeaway

> "Don't trust the glossy charts. The better looking the benchmarks are sometimes, the worse the underlying material is." ^[extracted]

Meaningful benchmarks must be automated, reproducible, include quality metrics (precision/recall), cover read-write workloads, compare equivalent software versions, and run continuously to detect regression.

## Related

- [[concepts/vector-search-limitations|Vector Search Limitations]] — why vector search behaves differently than traditional search
- [[concepts/benchmark-memes|Benchmark Memes]] — how benchmarks shape AI development
- [[concepts/hybrid-search|Hybrid Search]] — Elastic's approach combining multiple retrieval methods
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using benchmarks for optimization decisions
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — principles for designing effective benchmarks
