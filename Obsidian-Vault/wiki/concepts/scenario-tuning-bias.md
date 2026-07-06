---
title: Scenario Tuning Bias
category: concepts
tags:
- benchmarking
- bias
- cherry-picking
- vector-search
- aief2025
sources:
- AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY
summary: The tendency for benchmark authors to design scenarios that favor their own system — whether intentionally or unintentionally — by tuning data characteristics, query patterns, filters, and configur...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/benchmark-memes|Benchmark Memes]]'
  type: related_to
- target: '[[concepts/benchmark-design-principles|Benchmark Design Principles]]'
  type: related_to
- target: '[[concepts/vector-search-limitations|Vector Search Limitations]]'
  type: related_to
---

# Scenario Tuning Bias

**Scenario tuning bias** is the tendency for benchmark authors to design evaluation scenarios that favor their own system — whether intentionally or unintentionally — by tuning data characteristics, query patterns, filters, and configurations to exploit their system's strengths. ^[extracted]

## The "Similar Conditions" Comic

Krenn references a popular benchmarking comic: two systems are compared under "similar conditions," but one clearly wins because the conditions were designed for its strengths. This is the essence of scenario tuning bias — the appearance of fairness masking a tilted playing field. ^[extracted]

## How It Manifests

### Cherry-Picked Scenarios

Marketing teams run multiple benchmark scenarios, identify the one where "we're up and they're down," then generalize that single data point to claim "we're 40% faster on everything." All the scenarios where the competitor wins are discarded. ^[extracted]

### Configuration Tuning

Even unintentionally, authors tune configurations for their own system:
- **Shard size** — sized to fit optimally in memory for their system
- **Memory allocation** — tuned for their system's defaults
- **Instance sizing** — chosen based on what works well for their system
- **Compression settings** — optimized for their system's strengths
- **Data access patterns** — designed around their system's strengths

These choices are often not malicious — authors know their system best and pick what they know works. But the result is the same: skewed comparisons. ^[extracted]

### Selective Version Comparison

Benchmark authors typically update their own software to the latest version but don't update competitors. A benchmark might compare a vendor's current release against a competitor's version from 18 months prior — an "unavoidable convenience" that skews results. ^[extracted]

### Exploiting System-Specific Optimizations

Each system has unique optimizations. A system with better filter optimizations will appear faster on filtered workloads. A system with better merge strategies will appear faster on write-heavy workloads. Benchmark authors can exploit these by designing scenarios that hit their system's optimizations specifically. ^[inferred]

## The Glossy Charts Problem

> "Don't trust the glossy charts. The better looking the benchmarks are sometimes, the worse the underlying material is." ^[extracted]

Glossy, clean benchmark charts with dramatic "5x faster" headlines are often the result of scenario tuning bias rather than genuine performance advantages.

## Related

- [[concepts/benchmark-memes|Benchmark Memes]] — how benchmarks shape behavior beyond measurement
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — how to design benchmarks that resist bias
- [[concepts/vector-search-limitations|Vector Search Limitations]] — benchmarking-specific failure modes
- [[concepts/ann-quality-aware-benchmarking|ANN Quality-Aware Benchmarking]] — why quality metrics matter
