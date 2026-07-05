---
title: "Slow Boiling Frog Benchmarking"
category: concepts
tags:
  - benchmarking
  - regression-detection
  - performance-monitoring
  - aief2025
sources:
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "The 'slow boiling frog' problem in benchmarking: gradual performance degradation goes unnoticed when benchmarks are run ad hoc. Solved by nightly automated benchmarking that continuously compares against baseline."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/nightly-regression-benchmarking|Nightly Regression Benchmarking]]"
    type: related_to
  - target: "[[concepts/benchmark-design-principles|Benchmark Design Principles]]"
    type: related_to
  - target: "[[concepts/benchmark-memes|Benchmark Memes]]"
    type: related_to
---

# Slow Boiling Frog Benchmarking

The **slow boiling frog** problem in benchmarking describes how gradual performance degradation goes unnoticed when benchmarks are run manually or infrequently. Each individual change is minor enough to escape detection, but the cumulative effect is significant performance loss over time. ^[extracted]

## The Metaphor

The classic metaphor: a frog dropped in boiling water will jump out immediately, but a frog placed in gradually warming water never notices the danger and boils to death. Applied to software benchmarking: a single performance regression from one commit is often small enough to ignore, but weeks of small regressions accumulate into a system that is measurably worse than its previous state. ^[extracted]

## Why It Happens

1. **Ad hoc benchmarking** — Benchmarks are run occasionally, not continuously, so trends are invisible
2. **Individual change blindness** — Each commit's impact is too small to notice without a baseline
3. **No continuous timeline** — Without nightly comparison, there's no performance history to detect drift
4. **Optimization focus** — Teams optimize for new features, not regression prevention

## The Solution: Nightly Automated Benchmarks

Elastic's approach (described by Philipp Krenn): run a comprehensive benchmark suite every night, aggregating all daily changes and comparing against the previous night's baseline. This provides:

- **Continuous performance timeline** — Every day's performance is recorded
- **Change aggregation** — All changes from a day are evaluated together, matching real deployment patterns
- **Regression detection** — Any performance change (positive or negative) is flagged
- **Improvement detection** — Not just regressions; genuine improvements are also captured

The key insight: benchmarks should be a **continuous monitoring system**, not an occasional marketing exercise. ^[inferred]

## Related

- [[concepts/nightly-regression-benchmarking|Nightly Regression Benchmarking]] — the automated solution
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — automated and reproducible benchmarks
- [[concepts/benchmark-memes|Benchmark Memes]] — benchmarks should measure reality, not marketing
