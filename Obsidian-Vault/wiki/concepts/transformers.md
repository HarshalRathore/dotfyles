---
title: "Transformers"
category: concepts
tags:
  - llm
  - transformer
  - attention
  - tokenization
  - education
aliases:
  - transformer
  - transformer architecture
sources:
  - "https://x.com/i/status/2083498308899573948"
summary: "Sequence-model architecture that maps token embeddings through alternating causal self-attention and position-wise MLP layers, then produces next-token logits."
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-07-06"
updated: "2026-08-02"
relationships:
  - target: "[[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]"
    type: derived_from
  - target: "[[concepts/causal-language-model|Causal Language Model]]"
    type: related_to
  - target: "[[concepts/autoregressive-generation|Autoregressive Generation]]"
    type: related_to
---

# Transformers

A **transformer** is a sequence-model architecture that repeatedly combines cross-position attention with position-wise multilayer perceptrons (MLPs). In a causal language model, the stack maps token embeddings to logits for the next-token distribution. ^[extracted]

## Layer Structure

The captured lecture describes the high-level stack as:

1. Start with a sequence of learned token embeddings.
2. Apply an attention layer that outputs one vector per position.
3. Apply an MLP independently to each position.
4. Alternate attention and MLP layers.
5. Project the final vectors to vocabulary-sized logits and apply a softmax. ^[extracted]

The attention operation is where positions interact. The MLP is position-independent, so it can be evaluated in parallel across the sequence. ^[extracted]

## Scaled Dot-Product Attention

For input vectors `H`, each head learns query, key, and value projections:

```text
Q = H W_Q
K = H W_K
V = H W_V
Attention(H) = softmax(Q Kᵀ / √d_h + mask) V
```

Each query compares itself with every key through an inner product. A row-wise softmax turns those scores into weights, and the weighted values become the output for that position. ^[extracted]

## Causal Masking

In a causal model, position `t` must not depend on positions after `t`. The attention score matrix therefore receives negative-infinity mask values above its diagonal; softmax turns those entries into zero. This lets training compute many positions in parallel while preserving the left-to-right dependency required during generation. ^[extracted] ^[inferred]

## Multi-Head Attention

Multiple heads use different query, key, and value projection matrices. Their output vectors are concatenated and passed through another projection, giving the model several learned interaction patterns at each layer. ^[extracted]

## Sequence-Length Cost

For a sequence of length `T`, the query–key score matrix has `T × T` entries. The lecture identifies this quadratic dependence as the main long-context cost and mentions FlashAttention as a memory-footprint optimization. ^[extracted]

## Related

- [[concepts/causal-language-model|Causal Language Model]] — the probability model that uses causal masking
- [[concepts/autoregressive-generation|Autoregressive Generation]] — sequential decoding from transformer logits
- [[concepts/kv-cache|KV Cache]] — caches attention state during decoding

## Source

- [X post with embedded lecture media](https://x.com/i/status/2083498308899573948)
- [[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]
