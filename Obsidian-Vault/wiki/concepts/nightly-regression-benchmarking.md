---
title: "Nightly Regression Benchmarking"
category: concepts
tags:
  - benchmarking
  - regression-detection
  - ci-cd
  - performance-monitoring
  - aief2025
sources:
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Running benchmarks automatically every night to detect gradual performance regression — the antidote to the 'slow boiling frog' problem where slow degradation goes unnoticed in ad hoc benchmarking."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]]"
    type: related_to
  - target: "[[concepts/benchmark-design-principles|Benchmark Design Principles]]"
    type: related_to
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
---

# Nightly Regression Benchmarking

**Nightly regression benchmarking** is the practice of running a comprehensive benchmark suite automatically every night, comparing each day's changes against the previous baseline. This catches the "slow boiling frog" problem — gradual performance degradation that goes unnoticed when benchmarks are run ad hoc. ^[extracted]

## The Slow Boiling Frog Problem

When benchmarks are run manually or infrequently, small regressions accumulate over weeks or months without detection. Each individual change is minor enough to go unnoticed, but the cumulative effect is significant performance loss. The "slow boiling frog" metaphor captures this: a frog dropped in boiling water jumps out, but one placed in gradually warming water never notices the danger. ^[extracted]

## How It Works

Elastic's nightly benchmark system (as described by Philipp Krenn) operates as follows:

1. **Continuous execution** — The benchmark suite runs every night without manual intervention
2. **Change aggregation** — All code changes from the day are bundled together
3. **Baseline comparison** — The aggregated changes are compared against the previous night's results
4. **Regression detection** — Any performance change (positive or negative) is flagged for review

This approach has two benefits: it catches both regressions and improvements, and it provides a continuous performance timeline rather than isolated snapshots. ^[inferred]

## Key Requirements

For nightly regression benchmarking to be effective:

- **Automated and reproducible** — No manual setup; results must be reproducible by anyone
- **Comprehensive** — Must cover the full range of workloads, not just happy paths
- **Quality-aware** — Must include precision/recall, not just latency
- **Configured consistently** — Same configuration across all runs; no selective tuning
- **Version-aligned** — All systems compared at equivalent version states

## Relation to CI/CD

Nightly benchmarks complement continuous integration. CI runs fast, lightweight tests on every commit. Nightly benchmarks run slower, more comprehensive suites on a daily cadence. Together they provide both immediate feedback (CI) and deep trend detection (nightly). ^[inferred]

## Related

- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using benchmarks for optimization decisions
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — automated and reproducible benchmarks are foundational
- [[concepts/stochastic-evals|Stochastic Evals]] — the need for reliable, repeatable evaluation infrastructure
- [[concepts/benchmark-memes|Benchmark Memes]] — quality benchmarks counteract misleading benchmark culture
