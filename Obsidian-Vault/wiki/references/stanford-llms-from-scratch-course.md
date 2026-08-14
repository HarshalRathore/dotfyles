---
title: "Stanford Course: Building LLMs from Scratch (Two Sessions)"
category: references
tags:
  - llm
  - stanford
  - tokenization
  - transformer
  - training
  - education
aliases:
  - Stanford LLMs from scratch course
  - Stanford LLM course
sources:
  - "https://x.com/i/status/2083960395056939396"
  - "https://video.twimg.com/amplify_video/2083958381459738624/vid/avc1/1280x720/OOa_UkKZGnnk1NYC.mp4"
summary: "Stanford course on building LLMs from scratch in two sessions: tokenization, chain-rule LM, generation, training, transformer attention; then cross-entropy, SGD, and network components."
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]]"
    type: extends
  - target: "[[concepts/transformers|Transformers]]"
    type: related_to
  - target: "[[concepts/causal-language-model|Causal Language Model]]"
    type: related_to
  - target: "[[concepts/llm-training-pipeline|LLM Training Pipeline]]"
    type: derived_from
  - target: "[[misc/web-x-com-i-status-2083960395056939396|Stanford LLMs from Scratch X post]]"
    type: derived_from
---

# Stanford Course: Building LLMs from Scratch (Two Sessions)

> [!tldr] A 2h34m51s Stanford lecture recording in two sessions: session 1 builds an autoregressive LLM from scratch — tokenization, chain-rule language modeling, generation, training, and transformer attention; session 2 covers supervised learning with nonlinear models, cross-entropy loss, SGD, and neural-network components (MLP, residual networks, normalization). ^[extracted]

The instructor is a Stanford lecturer whose identity is not stated in the recording; he references "Chris's" earlier lectures on linear models, indicating a multi-instructor course sequence. ^[ambiguous]

## Caption vs Content Check

The tweet's chapter markers vs the actual recording (markers from the post, content from ASR): ^[ambiguous]

| Marker | Caption label | What actually happens |
|---|---|---|
| 00:00 | LLM tokenization | Matches — tokenization (subwords, BPE, vocabulary, token IDs) |
| 25:44 | How LLMs decode user prompts | Directionally close — autoregressive generation and sampling (temperature, top-k), i.e. decoding, runs ≈25:00–35:00 |
| 35:40 | Training pipeline of LLMs | Roughly matches — negative log-likelihood loss and optimizers run ≈35:00–38:00 |
| 1:16:47 | LLM architecture from scratch | Misaligned — the architecture (attention, multi-head, masking) was taught 38:00–76:00 and finishes at 76:48, where session 2 begins (supervised learning, not LLM architecture) |

The "2 hour course" label: the recording is 2:34:51. The claim that Anthropic pays $750,000/year for this knowledge is unverifiable marketing. ^[ambiguous]

## Relationship to the Earlier Stanford Clip

Session 1 (0:00–76:48) is verbatim the recording previously ingested as [[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]] (77 chunks, full text preserved there). This page covers the combined course; the transcript page is the authoritative verbatim source for session 1. ^[extracted]

## Session 1 — LLMs from Scratch (0:00–76:48)

| Range | Material |
|---|---|
| 0:00–10:00 | Tokenization: smallest input unit is a subword, not a word; rare-word reuse; BPE; vocabulary of ~100k+ (Qwen 3.5 cited at 250k tokens ^[ambiguous]); token IDs |
| 10:00–25:00 | Chain-rule decomposition of the sequence distribution into conditional next-token distributions; embeddings; logits + softmax; BOS token; causal structure |
| 25:00–35:00 | Autoregressive generation: feed sampled token back; temperature sharpens/softens; top-k sampling; decoding from a prompt prefix |
| 35:00–38:00 | Training: maximize likelihood = minimize negative log-likelihood summed over positions; optimizers (SGD, Adam) |
| 38:00–42:00 | Transformer high level: alternating attention and MLP layers; MLP is position-wise, parallel, shared |
| 42:00–64:00 | Single-head attention: Q/K/V projections, query–key inner products, row softmax, weighted values; matrix form; **causal masking** (−∞ above the diagonal) |
| 64:00–72:00 | Multi-head attention: parallel heads with different weights, concatenation, final projection; residuals, pre- vs post-norm |
| 72:00–76:48 | Efficiency: quadratic T² attention cost; why long contexts get compacted; FlashAttention; memory footprint |

Distilled principles (session 1): the model is a conditional distribution over tokens, not a lookup; causality is enforced in the computation graph via masking; attention cost grows quadratically with sequence length; sampling knobs (temperature, top-k) trade determinism for diversity without retraining. ^[inferred]

## Session 2 — Supervised Learning and Network Components (76:48–154:51)

| Range | Material |
|---|---|
| 76:48–87:00 | Nonlinear models: why nonlinearity-in-parameters matters (can't absorb into features); regression loss; multi-class classification with logits and softmax |
| 87:00–96:00 | Cross-entropy loss: −log of the true label's softmax probability; equivalence to MSE under a Gaussian likelihood; relation to cross-entropy between model and true distributions |
| 96:00–105:00 | Gradient descent vs stochastic gradient descent: per-example gradient is an unbiased estimate of the full gradient; why SGD is mandatory at trillion-token scale; local minima are not believed to be a practical barrier in high dimensions |
| 105:00–128:00 | MLP definition: weight matrices, biases, layer composition, parameter counting (m·d + m per layer), dimension compatibility |
| 128:00–146:00 | Activations (ReLU, sigmoid, tanh, LeakyReLU); **residual networks** (2015 ResNet paper): model the difference, add input back; dimension-preserving blocks; optimization-conditioning explanations |
| 146:00–152:00 | **Layer norm and RMS norm**: normalize then re-scale with learnable β/γ; RMS norm drops the mean subtraction; scaling invariance and training stability |
| 152:00–154:51 | Convolutions (brief): shared, shifted filters; the "real thing" in lecture notes |

## Entities

- [[entities/stanford|Stanford]] — course source ^[inferred]
- [[entities/roan|Roan]] — the X post that surfaced the recording
- [[entities/openai|OpenAI]] — GPT-3 cited as the origin of the autoregressive paradigm ^[inferred]

## Related

- [[references/stanford-llm-lecture-asr-transcript|Stanford LLM Lecture — Remote ASR Transcript]] — verbatim transcript of session 1
- [[concepts/transformers|Transformers]] — the architecture taught in session 1
- [[concepts/causal-language-model|Causal Language Model]] — chain-rule formulation
- [[concepts/autoregressive-generation|Autoregressive Generation]] — decoding and sampling
- [[concepts/llm-training-pipeline|LLM Training Pipeline]] — loss and optimization content
- [[misc/web-x-com-i-status-2083960395056939396|Stanford LLMs from Scratch X post]] — the source post
