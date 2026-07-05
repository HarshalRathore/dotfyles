---
title: "KV Cache"
category: concepts
tags:
  - inference
  - kv-cache
  - attention
  - llm
  - optimization
  - prefill
  - decode
aliases:
  - key-value cache
  - KV caching
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "The caching of key and value vectors during LLM inference, enabling autoregressive generation to avoid regenerating KV vectors for each new token. Foundation for prefill/decode phase separation."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: enables
  - target: "[[concepts/autoregressive-generation|Autoregressive Generation]]"
    type: enables
  - target: "[[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound]]"
    type: relates_to
---

# KV Cache

**KV cache** (key-value cache) is the mechanism by which LLM inference caches the key and value vectors associated with each token, enabling autoregressive generation to avoid regenerating the full set of KV vectors for the entire sequence at each step.

## How It Works

During the **prefill** phase, the model processes the input prompt and generates KV vectors for every token. These vectors are stored in the KV cache.

During the **decode** phase, for each new token generated, the model reads the existing KV cache (all previously generated KV vectors) and produces only the KV vector for the new token, appending it to the cache. This avoids the expensive computation of regenerating KV vectors for the entire sequence.

## Two Phases of Inference

The existence of the KV cache creates two distinct phases of LLM generation:

1. **Prefill** — Fill up the KV cache by processing the input prompt. This phase is **compute-bound** (GPU compute saturation).
2. **Decode** — Generate new KV vectors and new tokens simultaneously. This phase is **memory-bound** (reading the full KV cache for each token).

This phase separation is the foundation for [[concepts/disaggregated-inference|disaggregated inference]], which splits these phases onto different GPU sets.

## Memory Implications

The KV cache grows linearly with sequence length. For long prompts or long generations, the cache can become the dominant memory consumer, making decode the memory-bound phase. This is why disaggregation works: prefill saturates compute early, while decode is limited by memory bandwidth reading increasingly large caches.

## Related

- [[concepts/disaggregated-inference|Disaggregated Inference]] — exploits the prefill/decode split created by KV caching
- [[concepts/autoregressive-generation|Autoregressive Generation]] — the generation paradigm that uses KV caching
- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound]] — the resource profile difference between phases

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
