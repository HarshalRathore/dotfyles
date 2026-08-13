---
title: "Causal Language Model"
category: concepts
tags:
  - llm
  - causal-lm
  - autoregressive
  - transformer
  - token-generation
aliases:
  - causal language model
  - causal LM
sources:
  - "https://x.com/i/status/2083498308899573948"
summary: "A language model that factorizes sequence probability into next-token conditionals, with each position restricted to the tokens before it."
provenance:
  extracted: 0.84
  inferred: 0.11
  ambiguous: 0.05
base_confidence: 0.73
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-07-06"
updated: "2026-08-02"
relationships:
  - target: "[[concepts/transformers|Transformers]]"
    type: uses
  - target: "[[concepts/autoregressive-generation|Autoregressive Generation]]"
    type: related_to
  - target: "[[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]"
    type: derived_from
---

# Causal Language Model

A **causal language model** assigns probability to a token sequence by predicting each token from the tokens before it. For a sequence `x₁, …, x_T`, the chain rule gives:

```text
pθ(x₁:T) = ∏ₜ₌₁ᵀ pθ(xₜ | x₁:t−1)
```

The model therefore emits a vocabulary-sized logit vector at each position. Applying softmax to that vector gives the conditional distribution for the next token. ^[extracted]

## Training

For an observed sequence, maximum-likelihood training minimizes the negative log-likelihood:

```text
−log pθ(x₁:T) = −Σₜ log pθ(xₜ | x₁:t−1)
```

The target `xₜ` is already known from the training sequence, so all positions can be evaluated in parallel while the causal attention mask prevents each position from reading future tokens. ^[extracted] ^[inferred]

## Generation

At generation time the model starts from a beginning-of-sequence token or a supplied prompt, samples or selects `x₁`, feeds it back, and repeats for `x₂`, `x₃`, and so on. This is why generation is autoregressive even though training can process a complete sequence in parallel. ^[extracted]

Temperature rescales logits before softmax: lower values make the distribution sharper and higher values preserve more probability mass in the tail. Top-k sampling keeps only the highest-scoring `k` candidates and renormalizes before sampling. ^[extracted]

## Related

- [[concepts/transformers|Transformers]] — computes the conditional logits
- [[concepts/autoregressive-generation|Autoregressive Generation]] — the decode procedure
- [[concepts/in-context-learning|In-Context Learning]] — adapts behavior from prompt examples without weight updates

## Source

- [X post with embedded lecture media](https://x.com/i/status/2083498308899573948)
- [[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]
