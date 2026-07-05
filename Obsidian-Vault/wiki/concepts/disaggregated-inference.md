---
title: "Disaggregated Inference"
category: concepts
tags:
  - inference
  - disaggregation
  - prefill
  - decode
  - kv-cache
  - llm-serving
  - nvidia
  - optimization
aliases:
  - disaggregated inference
  - prefill-decode disaggregation
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "Splitting LLM inference into separate prefill (compute-bound) and decode (memory-bound) phases running on different GPU sets, enabling granular resource allocation and up to 2× throughput gains."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: builds_on
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: shifts
  - target: "[[concepts/in-flight-batching|In-Flight Batching]]"
    type: avoids_conflicts_with
  - target: "[[entities/nvidia-dynamo|NVIDIA Dynamo]]"
    type: enables
  - target: "[[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound]]"
    type: exploits
---

# Disaggregated Inference

**Disaggregated inference** is the practice of splitting LLM inference into two separate phases — **prefill** and **decode** — running on different GPU sets. This technique exploits the fundamentally different resource profiles of each phase to achieve significant throughput improvements.

## Background: KV Caching

LLM inference has two phases, both dependent on [[concepts/kv-cache|KV caching]]:

1. **Prefill** — The model processes the input prompt, generating key-value (KV) vectors for each token and filling the KV cache
2. **Decode** — The model autoregressively generates new tokens, each requiring the full KV cache to be read while writing new KV vectors

In traditional (aggregated) inference, both phases run on the same GPUs.

## Why Disaggregate?

The two phases have fundamentally different resource requirements:

- **Prefill is compute-bound** — It saturates GPU compute relatively early. For models like DeepSeek R1, compute saturates quickly, meaning fewer GPUs can handle large batch sizes efficiently.
- **Decode is memory-bound** — It reads the entire KV cache for each new token, making memory bandwidth the bottleneck rather than compute. This requires more GPUs to handle large batch sizes.

By splitting them, you can allocate resources optimally to each phase's needs.

## Benefits

### 1. Granular Load Matching

Compute-bound prefill can run on fewer, more powerful GPUs with lower batch sizes, while memory-bound decode can scale across many GPUs with higher batch sizes. This heterogeneity produces far more performance than a one-size-fits-all allocation.

### 2. Simpler Scheduling

When prefill and decode requests share the same machine, the scheduler faces conflicts — deciding whether to process new tokens (prefill) or continue generating (decode). Techniques like in-flight batching and chunk piggybacking attempt to handle this, but there's always a scheduling cost. Disaggregation eliminates these conflicts entirely.

### 3. Measured Performance Gains

[[entities/kyle-kranen|Kyle Kranen]] measured **up to 2× tokens per second per GPU** at fixed latency using disaggregation on Llama 70B with 16 H100s. At the same latency point, this translates to 2× lower cost for the same throughput.

## Disaggregation Tradeoffs

Disaggregation is not universally beneficial. Performance depends on the use case:

| Use Case | Disaggregation Benefit |
|---|---|
| Low input length | Little to no speedup (prefill-light, mostly decode) |
| Medium input length | Best benefit — middle of the Pareto frontier |
| High latency / high throughput | Aggregated reconverges with or slightly exceeds disaggregated |
| Low latency / low throughput | Aggregated reconverges with or slightly exceeds disaggregated |

The sweet spot is in the middle of the workload spectrum, where scheduling conflicts are most impactful and the resource profile mismatch between prefill and decode is most pronounced.

## Related

- [[concepts/kv-cache|KV Cache]] — foundation for understanding prefill/decode phases
- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — disaggregation shifts the frontier
- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound]] — the resource profile difference
- [[concepts/in-flight-batching|In-Flight Batching]] — the alternative scheduling approach that disaggregation avoids
- [[entities/nvidia-dynamo|NVIDIA Dynamo]] — open-source project enabling disaggregation

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
