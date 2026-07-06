---
title: MMLU-Pro
tags:
- evaluation
- benchmarking
- llm
- accuracy
aliases:
- MMLU Pro
- Massive Multitask Language Understanding Pro
sources:
- 'https://www.youtube.com/watch?v=89nuzmkokik'
summary: An enhanced version of the MMLU benchmark for factual accuracy evaluation of LLMs. Extended and more challenging than the original MMLU, implemented in the lm-eval-harness framework.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# MMLU-Pro

MMLU-Pro is a benchmark for evaluating factual accuracy of large language models, extended from the original MMLU (Massive Multitask Language Understanding). It tests model knowledge across a broad range of subjects using a multiple-choice format. ^[extracted]

## Usage in Evaluation

- Run through [[entities/lm-eval-harness|lm-eval-harness]], which supports MMLU-Pro as one of many eval tasks
- Can be customized by forking the MMLU dataset and replacing with proprietary data sources for private model evaluation ^[extracted]
- Part of the factual accuracy tier in the [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]]

## Related

- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — factual accuracy tier
- [[entities/lm-eval-harness|lm-eval-harness]] — framework for running MMLU-Pro
- [[concepts/evaluation-vs-benchmarking|Evaluation vs. Benchmarking]] — MMLU-Pro is a benchmark, a subset of broader evaluation

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
