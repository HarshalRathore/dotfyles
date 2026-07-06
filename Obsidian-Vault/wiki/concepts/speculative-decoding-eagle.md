---
title: Eagle Speculative Decoding
tags:
- inference
- optimization
- serving
- speculation
aliases:
- Eagle 3
- Eagle speculative decoding
- speculative decoding
sources:
- 'https://www.youtube.com/watch?v=ahtaha9fem0'
summary: Speculative decoding algorithm where the draft model is derived from multiple layers of the target model rather than being a separate smaller model.
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Eagle Speculative Decoding

Eagle (and its successor Eagle 3) is a speculative decoding framework supported by [[entities/sglang|SGLang]]. Unlike standard draft-target speculative decoding where a separate smaller model (e.g., Llama 1B) proposes tokens for a larger target model (e.g., Llama 8B), Eagle derives the draft model from multiple layers of the target model itself. ^[extracted]

## Key Parameters

When using Eagle 3 with SGLang, several parameters control behavior: ^[extracted]
- **Speculative decoding algorithm** — must be set to `eagle`
- **Draft model path** — the Eagle-derived draft model
- **Number steps** — depth of drafting (e.g., 3), controlling how many tokens ahead the model speculates
- **Eagle top_k** — top-k sampling during speculation (e.g., 1), controlling the number of candidates considered at each step
- **Number draft tokens** — maximum number of speculated tokens (e.g., 4)

## Tuning

Eagle 3 speculation parameters interact — for example, with 3 steps and top_k of 1, the maximum speculated tokens should not exceed 4. ^[extracted]

SGLang provides a benchmarking script that sweeps combinations of batch sizes, steps, top_k, and draft tokens to find the optimal configuration. ^[extracted]

**Important:** Speculation is content-dependent. Benchmarks must use prompts representative of the actual production workload. Benchmarking on non-representative data yields incorrect optimal parameters. ^[extracted]

## Related

- [[entities/sglang]] — SGLang's Eagle 3 implementation
- [[concepts/cuda-graph-for-llm-serving]] — Complementary optimization technique
- [[concepts/inference-performance-evaluation]] — Benchmarking inference performance

## Sources

- AI Engineer World's Fair 2025 — Introduction to LLM serving with SGLang, Philip Kiely & Yineng Zhang. https://www.youtube.com/watch?v=Ahtaha9fEM0
