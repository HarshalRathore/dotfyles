---
title: Benchmark Design Principles
category: concepts
tags:
- benchmark
- design
- evaluation
- llm
- aief2025
- benchmark-quality
summary: 'Six principles for designing effective benchmarks for LLM evaluation: multi-faceted, creativity-rewarding, accessible, generative, evolutionary, and experiential. Proposed by Alex Duffy at AIEF2025...'
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
- target: '[[concepts/model-benchmarks|Model Benchmarks]]'
  type: related_to
- target: '[[concepts/benchmark-memes|Benchmark Memes]]'
  type: related_to
- target: '[[concepts/benchmark-saturation|Benchmark Saturation]]'
  type: related_to
- target: '[[concepts/evolutionary-benchmarks|Evolutionary Benchmarks]]'
  type: related_to
- target: '[[concepts/experiential-benchmarks|Experiential Benchmarks]]'
  type: related_to
- target: '[[concepts/scenario-tuning-bias|Scenario Tuning Bias]]'
  type: related_to
sources: []
---

# Benchmark Design Principles

Alex Duffy proposed six characteristics that a great benchmark for the future should possess. These principles are designed to address the limitations of traditional standardized-test-style benchmarks and resist saturation. ^[extracted]

## The Six Principles

### 1. Multi-faceted
A benchmark should evaluate multiple dimensions of capability rather than a single axis. No single score captures the full picture of model ability. ^[extracted]

**Vector search application**: A vector search benchmark should measure latency, throughput, precision, recall, read performance, and write performance — not just one metric. ^[inferred]

### 2. Rewards Creativity
Benchmarks should not just measure correctness but reward novel, creative solutions. This prevents models from simply memorizing optimal answers and encourages genuine capability. ^[extracted]

### 3. Accessible
Benchmarks should be easy to understand — for both models and people. Small models should be able to compete alongside large ones, and people outside AI should be able to track progress. This also makes benchmarks a "spectator sport." ^[extracted]

### 4. Generative
The unique property of LLMs is that training data can be re-used to bootstrap next-generation performance. If a model only succeeds 10% of the time on a generative task, you can train on that data and the next generation succeeds 90% of the time. This feedback loop is "incredible and hard to understate." ^[extracted]

### 5. Evolutionary
Benchmarks should get harder and deeper as models improve, rather than capping at a fixed accuracy threshold. The difference between 96% and 98% is not meaningful — benchmarks should evolve to maintain discriminative power. ^[extracted] See [[concepts/evolutionary-benchmarks|Evolutionary Benchmarks]].

### 6. Experiential
Benchmarks should mimic real-world situations rather than abstract test formats. This connects model evaluation to actual utility. ^[extracted] See [[concepts/experiential-benchmarks|Experiential Benchmarks]].

**Vector search application**: Real-world vector search workloads are read-write, not read-only. Benchmarks should reflect actual deployment patterns, not idealized test scenarios. ^[inferred]

## Ethical Dimension

Duffy connects these principles to an ethical framework: benchmarks should empower people and give them agency, avoiding the "original sin of social media" of treating people as data points. The goal is benchmarks that help people learn, like AlphaGo and OpenAI's AI teaching humans to play games. ^[extracted]

## Vector Search Benchmarking: Applying the Principles

Philipp Krenn's critique of vector search benchmarks maps directly onto these principles:

- **Multi-faceted**: Most vector benchmarks measure only latency, ignoring precision, recall, and write performance ^[inferred]
- **Experiential**: Read-only benchmarks don't reflect real read-write workloads ^[inferred]
- **Accessible**: Non-reproducible benchmarks exclude independent verification ^[inferred]
- **Evolutionary**: Nightly automated benchmarks provide continuous evolution rather than static snapshots ^[inferred]

## Related Concepts

- [[concepts/benchmark-memes|Benchmark Memes]] — why benchmark design matters (benchmarks shape AI)
- [[concepts/benchmark-saturation|Benchmark Saturation]] — what happens when design is poor
- [[concepts/evolutionary-benchmarks|Evolutionary Benchmarks]] — principle #5 in detail
- [[concepts/experiential-benchmarks|Experiential Benchmarks]] — principle #6 in detail
- [[concepts/scenario-tuning-bias|Scenario Tuning Bias]] — how poor design enables bias

## Sources

- AIEF2025 - Benchmarks Are Memes: How What We Measure Shapes AI—and Us - Alex Duffy, Every.to - https://www.youtube.com/watch?v=W3khHzajE04
- AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY
