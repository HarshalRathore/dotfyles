---
title: "GPT-5.6 Sol Trains Autocorrect Model That Beats Itself — Anshu Thread"
category: references
tags:
  - autoresearch
  - fine-tuning
  - gpt-5.6
  - ai-driven-ml
  - consumer-hardware
sources:
  - https://x.com/anshuc/status/2077173469293535723
source_url: https://x.com/anshuc/status/2077173469293535723
summary: Anshu uses GPT-5.6 Sol to autonomously design and train a 1.7B autocorrect model that outperforms Sol itself (91.02% vs 90.56% error reduction), spending $0, running entirely on a MacBook M5 Max.
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18T00:00:00Z
updated: 2026-07-18T00:00:00Z
relationships:
  - target: "[[concepts/auto-research-loop]]"
    type: extends
  - target: "[[concepts/fine-tuning-best-practices]]"
    type: implements
---

# GPT-5.6 Sol Trains Autocorrect Model That Beats Itself — Anshu Thread

**Source:** [Anshu (@anshuc)](https://x.com/anshuc) — 2026-07-14 via X (main post + 7 replies) ^[extracted]

## Summary

Anshu, who states they have no ML background, used **GPT-5.6 "Sol"** to autonomously drive a complete ML research project: designing and training a 1.7B parameter autocorrect model that outperforms GPT-5.6 Sol itself on a held-out test set (91.02% vs 90.56% error reduction), for **$0 spend** (one quota reset from @thsottiaux). ^[extracted]

This is a direct demonstration of the [[concepts/auto-research-loop|auto-research]] paradigm — an AI system autonomously conducting ML research. ^[inferred]

## Sol's Autonomous Workflow

GPT-5.6 Sol iterated over the following steps without human intervention: ^[extracted]

1. **Benchmark scanning** — surveyed existing autocorrect benchmarks and metrics
2. **Base model shortlisting** — evaluated Qwen 3.5, Gemma 4, and Liquid LFM 2.5
3. **Keyboard simulator** — built a Mac keyboard typing simulator with Gaussian per-key error distribution
4. **Fine-tuning via MLX** — ran training on a MacBook (M5 Max with 128GB) over ~3 days ^[extracted]

## Three Solved Problems

Sol encountered and solved three technical challenges during the project: ^[extracted]

1. **Tokenization bottleneck** — solved by switching to ByT5 then a T5Gemma encoder-decoder architecture (tokenizer-free approach)
2. **Loss function** — created a custom byte-aligned edit-weighted loss via dynamic programming
3. **Autoregressive decoding** — implemented beam search with live partial-prefix display

## Technical Specifications

- **Final model:** 1.7B parameters, English-only ^[extracted]
- **Hardware:** MacBook M5 Max with 128GB RAM ^[extracted]
- **Latency:** ~40ms time-to-first-token (TTFT), entirely local on MacBook GPU ^[extracted]
- **Training time:** ~3 days of Codex iterating ^[extracted]
- **Evaluation:** Held-out test set with scrubbed words to prevent memorization ^[extracted]

## Connections to Other Sources

- Anshu explicitly cites Andrej Karpathy's "autoresearch" concept — connecting directly to the RSI/autoresearch literature ^[extracted]
- The name-checks Gemma 4 as a shortlisted base model, linking to Google Gemma's fine-tuning ecosystem ^[inferred]
- Together with Zhengyao Jiang's AIDE², this forms a case study in [[concepts/auto-research-loop|autoresearch]] — AI systems driving ML research autonomously, with Anshu's work representing a more ad-hoc but equally striking example compared to AIDE²'s formalized dual-loop architecture ^[inferred]

## Significance

Anshu's experiment demonstrates that [[concepts/fine-tuning-best-practices|fine-tuning]] on consumer hardware, guided by an autonomous AI researcher, can produce specialized models exceeding the general capabilities of the guiding AI — at near-zero marginal cost. This has implications for democratized AI research and the practical accessibility of model customization. ^[inferred]

## Related

- [[concepts/auto-research-loop]] — the auto-research paradigm this experiment exemplifies
- [[concepts/fine-tuning-best-practices]] — fine-tuning techniques Sol employed
