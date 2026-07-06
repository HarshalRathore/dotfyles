---
title: Evolutionary Benchmarks
category: concepts
tags:
- benchmark
- design
- evaluation
- saturation
- aief2025
summary: Benchmarks that get harder and deeper as models improve, rather than capping at a fixed accuracy threshold. Designed to resist saturation and maintain discriminative power across model generations.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/benchmark-saturation|Benchmark Saturation]]'
  type: related_to
- target: '[[concepts/benchmark-design-principles|Benchmark Design Principles]]'
  type: extends
- target: '[[concepts/experiential-benchmarks|Experiential Benchmarks]]'
  type: related_to
sources: []
---

# Evolutionary Benchmarks

**Evolutionary Benchmarks** are evaluation frameworks designed to get progressively harder and deeper as models improve, rather than capping at a fixed accuracy threshold. They are one of six benchmark design principles proposed by Alex Duffy at AIEF2025. ^[extracted]

## The Problem with Fixed Thresholds

Duffy points out that the difference between 96% and 98% accuracy is "not as big of a deal" — once models approach ceiling performance, small percentage differences become statistically noisy and practically meaningless. Fixed benchmarks lose all discriminative power in this regime. ^[extracted]

## The Solution: Evolution

Instead of static benchmarks with fixed difficulty, evolutionary benchmarks should:

- **Get harder** as models improve — new challenges emerge at higher capability levels
- **Get deeper** — the challenge itself becomes more complex, not just the same task with harder inputs
- **Maintain discriminative power** across model generations

This means benchmarks should be designed as evolving systems, not fixed tests. ^[extracted]

## Connection to Generative Benchmarks

Evolutionary benchmarks work well with **generative benchmarks** (where training data from one generation becomes training data for the next). As models get better at the task, the benchmark can evolve to test deeper capabilities that the improved models now make possible. ^[inferred]

## Examples

- **Counting 1–10** — Google's video generation benchmark shows models still struggle with sequential counting out loud. As models improve, the benchmark could evolve to more complex sequential reasoning tasks
- **AI Diplomacy** — A living benchmark where the strategic landscape evolves as models get better at negotiation, creating new strategic possibilities

## Related Concepts

- [[concepts/benchmark-saturation|Benchmark Saturation]] — the problem evolutionary benchmarks solve
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — where this principle originates
- [[concepts/experiential-benchmarks|Experiential Benchmarks]] — complements evolutionary design

## Sources

- AIEF2025 - Benchmarks Are Memes: How What We Measure Shapes AI—and Us - Alex Duffy, Every.to - https://www.youtube.com/watch?v=W3khHzajE04
