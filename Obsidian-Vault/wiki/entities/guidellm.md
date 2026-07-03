---
title: "GuideLLM"
tags:
  - tool
  - benchmarking
  - evaluation
  - inference
  - performance
  - open-source
aliases:
  - Guide LLM
  - guidellm
sources:
  - "AIEF2025 - Strategies for LLM Evals (GuideLLM, lm-eval-harness, OpenAI Evals Workshop) — Taylor Jordan Smith - https://www.youtube.com/watch?v=89NuzmKokIk"
summary: "Open-source system performance benchmarking tool for LLM inference, part of the VLLM ecosystem. Measures latency, throughput, time-to-first-token, and inter-token latency with an in-terminal UI and JSON output."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# GuideLLM

GuideLLM is an open-source system performance benchmarking tool for LLM inference, associated with the [[entities/vllm|VLLM]] inference runtime project. It generates benchmarks for latency, throughput, and related metrics, providing an in-terminal UI to visualize results. ^[extracted]

## Features

- **Multi-metric measurement** — latency, throughput, time-to-first-token (TTFT), inter-token latency
- **Rate sweep** — tests across configurable request-per-second rates to identify bottlenecks
- **Use-case simulation** — adjustable input/output token levels to simulate chatbot, RAG, or other workloads
- **Statistics** — mean, median, and P99 performance for SLO planning
- **JSON output** — detailed results for programmatic analysis
- **In-terminal UI** — visual result display during benchmark runs ^[extracted]

## Usage

Installed via pip: `pip install guidellm`

Configured with: target model endpoint, rate type, input/output token levels, and optional parameters. Runs against a model deployed via VLLM (or compatible inference runtime). ^[extracted]

## Related

- [[entities/vllm|VLLM]] — inference runtime it benchmarks against
- [[concepts/inference-performance-evaluation|Inference Performance Evaluation]] — the practice it supports
- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — GuideLLM addresses the base (system performance) tier
- [[entities/lm-eval-harness|lm-eval-harness]] — complementary tool for factual accuracy benchmarks

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
