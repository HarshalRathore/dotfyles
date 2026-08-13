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
  - "https://x.com/i/status/2083498308899573948"
summary: "The token-by-token generation paradigm where each new token is predicted from prior context, forming the decode phase of LLM inference."
provenance:
  extracted: 0.87
  inferred: 0.09
  ambiguous: 0.04
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-07-04"
updated: "2026-08-02"
relationships:
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: uses
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: related_to
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: related_to
  - target: "[[misc/web-x-com-i-status-2083498308899573948|Stanford LLM Lecture Clip: Tokenization, Causal Attention, and the X Caption]]"
    type: related_to
---

# Autoregressive Generation

**Autoregressive generation** predicts one token at a time. Each new token is conditioned on the previously generated sequence, so the output is fed back into the model before the next token is produced. ^[extracted]

## Probability Model

For a token sequence `x₁:T`, a causal language model factorizes the joint probability as:

```text
pθ(x₁:T) = ∏ₜ₌₁ᵀ pθ(xₜ | x₁:t−1)
```

The transformer emits a vocabulary-sized logit vector for each conditional distribution; softmax turns it into next-token probabilities. ^[extracted]

## How It Works

After the [[concepts/kv-cache|KV cache]] is filled during prefill, the model generates tokens one at a time:

1. Read the current KV cache.
2. Predict the next-token distribution.
3. Sample or select the next token.
4. Append the new token's KV state.
5. Repeat until generation stops.

This is inherently sequential — each step depends on the previous — and is therefore different from the parallelizable prefill phase. ^[extracted]

## Decoding Controls

Temperature rescales logits before softmax. Lower temperature sharpens the distribution toward the most likely token; higher temperature preserves more probability mass in the tail and increases diversity. Top-k sampling keeps only the highest-scoring `k` candidates and renormalizes them before sampling. These controls change decoding, not the trained weights. ^[extracted]

## Relation to Decode Phase

Autoregressive generation is the decode phase. In [[concepts/disaggregated-inference|disaggregated inference]], the decode phase can run on separate GPUs from prefill because the two phases have different resource profiles.

## Relation to Reasoning Models

[[concepts/reasoning-models|Reasoning models]] extend autoregressive generation by producing additional reasoning tokens before the final answer. This increases the number of autoregressive steps and therefore latency and cost.

## Related

- [[concepts/kv-cache|KV Cache]] — stores attention state for prior tokens
- [[concepts/causal-language-model|Causal Language Model]] — defines the chain-rule probability model
- [[concepts/transformers|Transformers]] — computes the next-token logits
- [[concepts/disaggregated-inference|Disaggregated Inference]] — separates prefill and decode resources

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
- [X post with embedded lecture media](https://x.com/i/status/2083498308899573948)
- [[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]
