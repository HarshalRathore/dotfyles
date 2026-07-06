---
title: LLM Judge Correctness Metric
category: concepts
tags:
- evals
- llm-as-judge
- metrics
- ai-search
- aief2025
aliases:
- correctness metric
- simpleqa correctness
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.9
  inferred: 0.06
  ambiguous: 0.04
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/llm-as-judge-evaluation]]'
  type: is_a
- target: '[[concepts/simpleqa]]'
  type: used_with
summary: LLM Judge Correctness Metric
---

# LLM Judge Correctness Metric

The **LLM judge correctness metric** is an evaluation method that uses an LLM to compare a model's response against a ground-truth answer, classifying each response as correct, incorrect, or not attempted. It is the primary metric used in the SimpleQA benchmark. ^[extracted]

## How It Works

The LLM judge receives three inputs: ^[extracted]

1. The user's question
2. The model's generated response
3. The ground-truth answer

It then evaluates whether the response matches the ground truth and outputs one of three classifications:

- **Correct** — The response matches the ground truth
- **Incorrect** — The response does not match the ground truth
- **Not attempted** — The response does not address the question

## Usage in Static vs Dynamic Benchmarking

The Quotient AI + Tavily collaboration used the SimpleQA correctness metric to evaluate six AI search providers on both static (SimpleQA) and dynamic (~1,000-row) benchmarks. This enabled a direct comparison of how providers perform when evaluated against fixed ground truth vs dynamically generated ground truth. ^[extracted]

## Relationship to Reference-Free Evaluation

The correctness metric is a **reference-based** (supervised) evaluation method — it requires ground-truth answers. The talk also demonstrated **reference-free** (unsupervised) evaluation methods as a complementary approach for when ground truth is unavailable or subjective. ^[extracted]

## Related

- [[concepts/llm-as-judge-evaluation]] — LLM-as-judge in general
- [[concepts/simpleqa]] — Benchmark using this metric
- [[concepts/reference-free-evaluation]] — Complementary approach
- [[entities/tavily]] — Used in their experimental comparison
