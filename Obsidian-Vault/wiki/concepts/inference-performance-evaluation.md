---
title: Inference Performance Evaluation
tags:
- evaluation
- inference
- benchmarking
- performance
- latency
- throughput
- llm
aliases:
- LLM Inference Benchmarking
- System Performance Evaluation
- Inference Benchmarks
sources:
- 'https://www.youtube.com/watch?v=89nuzmkokik'
- 'https://www.youtube.com/watch?v=deff3j8t5pk'
summary: System-level evaluation of LLM inference performance measuring latency, throughput, time-to-first-token, and inter-token latency. Covers both GuideLLM methodology and Modal LLM Almanac's prefill-vs...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Inference Performance Evaluation

Inference performance evaluation measures the system-level behavior of LLM serving infrastructure — latency, throughput, and resource utilization — and forms the base tier of the [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]]. Without adequate inference performance, no amount of accuracy or safety tuning makes a model production-viable. ^[extracted]

## Key Metrics

| Metric | Description |
|---|---|
| **Latency** | Time from request to full response (end-to-end) |
| **Throughput** | Requests or tokens processed per unit time |
| **Time-to-First-Token (TTFT)** | Latency before the first token is generated |
| **Inter-Token Latency** | Time between successive output tokens |
| **P99 Latency** | The 99th percentile extreme — critical for SLOs |

## GuideLLM

[[entities/guidellm|GuideLLM]] is a system performance benchmarking tool, part of the [[entities/vllm|VLLM]] inference runtime ecosystem. It provides:

- An in-terminal UI to visualize benchmark results
- Configurable rate types (constant rate sweep across request-per-second values)
- Adjustable input/output token configurations to simulate specific use cases (chatbot vs. RAG)
- Mean, median, and P99 performance statistics
- JSON output format for detailed analysis ^[extracted]

### Benchmarking Workflow

1. Deploy a model with VLLM (or another inference runtime)
2. Install GuideLLM (`pip install guidellm`)
3. Configure the benchmark: rate type, input/output token levels, model endpoint
4. Run the benchmark (typically a few minutes)
5. Analyze results — mean, median, P99 for each metric
6. Adjust parameters based on use case and re-run
7. Compare results across hardware configurations and model sizes ^[inferred]

## VLLM Inference Runtime

[[entities/vllm|VLLM]] is used as the serving layer for inference benchmarks. Key advantages mentioned in the workshop:

- Compatible with SafeTensor format — no model format conversion needed (unlike TensorRT)
- Supports reducing max context window to improve speed for benchmarking
- Simple CLI: `vllm serve <model>` ^[extracted]

In the workshop, an [[entities/ibm-granite|IBM Granite]] 2B model was deployed on an L4 GPU using VLLM in a container.

## Modal LLM Almanac Methodology

The [[entities/modal|Modal]] LLM Almanac (modal.com/llm-almanac) benchmarks inference engines using two complementary measurement modes: ^[extracted]

1. **Max throughput:** Send ~1000 requests simultaneously; divide count by completion time. Reveals the engine's maximum parallelism.
2. **Latency sweep:** Send one request at a time, wait for completion. The minimum possible latency.
3. **Full sweep:** Vary request rate between extremes to find the performance curve — from maximum achievable throughput to the point where queuing theory predicts latency blowup.

### Prefill vs Decode Throughput

A key finding from the Almanac is the ~4x throughput gap between prefill-dominated (RAG, context-rich) and decode-dominated (reasoning, generation) workloads. This follows from the transformer architecture: prefill is compute-bound matrix-matrix multiplication, while decode is memory-bandwidth-bound matrix-vector multiplication. ^[extracted]

### Scale Out, Not Up

All Almanac throughput numbers are **per-replica** (single H100). Total production throughput is achieved by scaling out horizontally across replicas. ^[extracted]

## Inference Pain Points

The workshop identified specific challenges enterprises face with inference performance evaluation:

- Manual setup of evaluation runs with various parameters
- High compute load for performance evaluation
- Dataset compatibility with target models
- Resource optimization and hardware sizing (efficient GPU investment)
- Cost estimation described as "backwards math mapping inference performance to tokens" — very difficult to do accurately ^[extracted]

## Related

- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — the base tier this belongs to
- [[entities/guidellm|GuideLLM]] — benchmarking tool
- [[entities/vllm|VLLM]] — inference runtime
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using performance results to optimize
- [[concepts/enterprise-inference-infrastructure|Enterprise Inference Infrastructure]] — infrastructure considerations for production

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
