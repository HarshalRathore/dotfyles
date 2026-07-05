---
title: "Autoregressive Generation"
category: concepts
tags:
  - inference
  - autoregressive
  - llm
  - token-generation
  - decode
aliases:
  - autoregressive generation
  - auto-regressive
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "The token-by-token generation paradigm where each new token is predicted based on all previous tokens, forming the basis for the decode phase of LLM inference."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: depends_on
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: constitutes_decode_phase_of
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: relates_to
---

# Autoregressive Generation

**Autoregressive generation** is the token-by-token prediction paradigm used by all mainstream LLMs: each new token is predicted based on all previously generated tokens, forming the decode phase of inference.

## How It Works

After the [[concepts/kv-cache|KV cache]] is filled during prefill, the model generates tokens one at a time:

1. Read the current KV cache
2. Predict the next token
3. Append the new token's KV vector to the cache
4. Repeat until generation stops

This is inherently sequential — each step depends on the previous — making it fundamentally different from the parallelizable prefill phase.

## Relation to Decode Phase

Autoregressive generation IS the decode phase. In [[concepts/disaggregated-inference|disaggregated inference]], the decode phase runs on separate GPUs from prefill precisely because autoregressive generation has different resource requirements (memory-bound vs compute-bound).

## Relation to Reasoning Models

[[concepts/reasoning-models|Reasoning models]] extend autoregressive generation by producing additional "thinking" tokens before the final answer. This increases the number of autoregressive steps, thereby increasing both latency and cost.

## Related

- [[concepts/kv-cache|KV Cache]] — the data structure enabling autoregressive generation
- [[concepts/disaggregated-inference|Disaggregated Inference]] — the decode phase IS autoregressive generation
- [[concepts/reasoning-models|Reasoning Models]] — extend autoregressive generation with thinking tokens

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
