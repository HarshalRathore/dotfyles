---
title: lm-eval-harness
tags:
- tool
- evaluation
- benchmarking
- llm
- open-source
aliases:
- LM Evaluation Harness
- EleutherAI LM Eval Harness
- lm_eval
sources:
- 'https://www.youtube.com/watch?v=89nuzmkokik'
summary: Open-source framework from EleutherAI for running standardized LLM benchmarks including MMLU-Pro. Supports many eval tasks and allows custom dataset integration via forking.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# lm-eval-harness

lm-eval-harness is an open-source evaluation framework for running standardized LLM benchmarks, maintained by EleutherAI. It supports a wide range of evaluation tasks including [[concepts/mmlu-pro|MMLU-Pro]]. ^[extracted]

## Features

- **Multiple benchmark tasks** — supports many different evaluation benchmarks beyond MMLU
- **Standardized evaluation** — consistent methodology for comparing models
- **Customizable** — can be forked to replace data sources with proprietary datasets
- **Open-source** — community-maintained on GitHub

## MMLU-Pro Usage

At the AI Engineer World's Fair 2025 workshop, lm-eval-harness was used to run the MMLU-Pro benchmark for factual accuracy evaluation. The speaker noted that you can customize it by forking MMLU and changing data sources for proprietary model evaluation. ^[extracted]

## Relationship to Other Tools

- [[entities/guidellm|GuideLLM]] — complementary: GuideLLM handles performance benchmarks, lm-eval-harness handles accuracy benchmarks
- [[entities/promptfu|PromptFu]] — complementary: lm-eval-harness for factual accuracy, PromptFu for safety/bias

## Related

- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — lm-eval-harness addresses the factual accuracy tier
- [[concepts/evaluation-vs-benchmarking|Evaluation vs. Benchmarking]] — lm-eval-harness provides standardized benchmarks
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using lm-eval-harness results to drive model selection

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
