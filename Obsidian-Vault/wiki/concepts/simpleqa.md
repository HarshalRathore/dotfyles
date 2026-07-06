---
title: SimpleQA
category: concepts
tags:
- evals
- benchmarking
- openai
- retrieval
- static-eval-sets
aliases:
- simple qa
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/static-eval-sets]]'
  type: is_a
- target: '[[concepts/hotpotqa]]'
  type: contrasts_with
- target: '[[concepts/dynamic-eval-sets]]'
  type: limited_by
summary: SimpleQA
---

# SimpleQA

**SimpleQA** is a benchmark and dataset from OpenAI designed to evaluate an AI system's ability to answer short, fact-seeking questions with a single empirical answer. It is one of the most widely adopted static datasets for evaluating AI search retrieval accuracy. ^[extracted]

## Characteristics

- **Question type**: Short, fact-seeking questions
- **Answer format**: Single empirical answer
- **Dataset type**: Static (fixed at creation time)
- **Creator**: OpenAI

## Usage

Many leading AI search providers use SimpleQA as a standard benchmark for evaluating their retrieval performance. The SimpleQA correctness metric is implemented as an LLM judge that compares a model's response against ground-truth answers, classifying each as correct, incorrect, or not attempted. ^[extracted]

## Limitations

SimpleQA is designed for factual questions with single answers. It does not address: ^[extracted]

- Multi-hop reasoning (covered by [[concepts/hotpotqa|HotPotQA]])
- Questions where there is no single "truth" answer (subjectivity)
- Real-time, time-sensitive queries where ground truth changes

## Related

- [[concepts/static-eval-sets]] — SimpleQA is a static eval set
- [[concepts/hotpotqa]] — The multi-hop counterpart
- [[concepts/dynamic-eval-sets]] — Dynamic eval sets address SimpleQA's limitations
- [[entities/openai]] — Creator of the benchmark
