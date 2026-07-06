---
title: LLM Evaluation Pyramid
tags:
- evaluation
- llm
- benchmarking
- methodology
- testing
- production
aliases:
- Model Evaluation Pyramid
- LLM Eval Pyramid
- Eval Pyramid
sources:
- 'https://www.youtube.com/watch?v=89nuzmkokik'
summary: A tiered framework for evaluating LLMs in production, progressing from system performance (base) through formatting, factual accuracy, safety/bias, to custom evals (top) — analogous to the software...
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

# LLM Evaluation Pyramid

The LLM Evaluation Pyramid is a tiered framework for evaluating large language models in production, presented by [[entities/taylor-jordan-smith|Taylor Jordan Smith]] at the AI Engineer World's Fair 2025. It mirrors the software engineering testing pyramid (unit → integration → end-to-end) but adapted for model evaluation. ^[extracted]

## The Five Tiers

### 1. System Performance (Base)
The foundation: latency, throughput, GPU utilization, time-to-first-token, inter-token latency. Without this, nothing else matters. "No matter how good your model is, if it's not fast, if it's not reliable, if it's not affordable, you're screwed." ^[extracted]

Tools: [[entities/guidellm|GuideLLM]], [[entities/vllm|VLLM]], custom inference benchmarks. ^[inferred]

### 2. Formatting
Ensuring structured outputs (JSON, specific schemas) are consistently produced. A model that delivers correct content in the wrong format breaks downstream consumers. ^[extracted]

### 3. Factual Accuracy
Standardized benchmarks measuring correctness across domains: [[concepts/mmlu-pro|MMLU-Pro]] and similar. Also applies to fine-tuned models — evaluating accuracy against the fine-tuning data. ^[extracted]

Tools: [[entities/lm-eval-harness|lm-eval-harness]] framework.

### 4. Safety & Bias
Guardrails against harmful outputs, bias mitigation, detecting satire vs. fact. Addresses the known drawbacks of Gen AI models: hallucination risks, biased outputs from Eurocentric training data, and legal exposure. ^[extracted]

Tools: [[entities/promptfu|PromptFu]].

### 5. Custom Evals (Top)
Application-specific evaluation criteria reverse-engineered from business outcomes. The most bespoke layer — depends entirely on the specific system (RAG, agents, chatbot). ^[extracted]

## Relationship to Software Testing

The pyramid mirrors the software engineering test pyramid:
| Software Testing | Model Evaluation |
|---|---|
| Unit tests | System performance & formatting |
| Integration tests | Factual accuracy |
| End-to-end tests | Custom evals |
| (Continuous) | Safety & Bias (cross-cutting) |

## Incremental Adoption

Teams should start at the base and work upward incrementally, rather than trying to evaluate everything at once. For example, a RAG system might start by evaluating chunk retrieval (component level), then latency/throughput, and expand to full system eval covering integration and end-to-end experience. ^[extracted]

## Evaluation vs. Benchmarking

A key distinction made in the talk: [[concepts/evaluation-vs-benchmarking|evaluation is a comprehensive process]] to assess a model end-to-end. Benchmarking is a subcategory — controlled, specific datasets and tasks for comparing models against one another. The pyramid encompasses both: the lower tiers lean toward benchmarks (MMLU-Pro, latency scores), while the upper tiers lean toward custom evaluations. ^[extracted]

## Related

- [[concepts/evaluation-first-development|Evaluation-First Development]] — methodology that pairs with the pyramid
- [[concepts/inference-performance-evaluation|Inference Performance Evaluation]] — deep dive into the base tier
- [[concepts/task-specific-evals|Task-Specific Evals]] — the philosophy behind the custom evals tier
- [[concepts/ai-regression-testing|AI Regression Testing]] — regression detection powered by eval pyramid tiers
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using pyramid results to drive optimization
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — how custom evals are built
- [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]] — evaluation mechanism for the custom tier

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
