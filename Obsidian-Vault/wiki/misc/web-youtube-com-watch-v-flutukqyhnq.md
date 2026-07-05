---
title: "Everything I Learned Training Frontier Small Models — Maxime Labonne"
category: misc
tags: [ai, small-models, edge-ml, lfm, liquid-ai, post-training, rl]
sources:
  - "[[sources/watchv=flutukqyhnq]]"
source_url: "https://www.youtube.com/watch?v=fLUtUkqYHnQ"
created: 2026-06-30T23:59:00Z
updated: 2026-06-30T23:59:00Z
summary: "Maxime Labonne's AI Engineer talk on post-training frontier small models (350M–1.2B): architecture tradeoffs, the LFM 2.5 recipe, doom loops at 1B scale, and agentic RL with verifiable rewards."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-06-30
---

# Everything I Learned Training Frontier Small Models — Maxime Labonne

> Maxime Labonne, head of pre-training at Liquid AI. AI Engineer (Apr 29, 2026).

## Overview

Maxime Labonne's talk covers how to post-train frontier small models (350M–1.2B parameters) for on-device deployment under 1GB memory. He walks through the LFM 2.5 recipe: on-policy preference alignment, agentic RL, curriculum training with iterative model merging — and the unique failure modes at small scale like doom loops and capability interference.

## Key Points

### Small Model Characteristics (vs Large)

1. **Memory-bound** — running on phones, in cars; can't use big models.
2. **Task-specific** — narrow focus (data extraction, tool use) rather than general purpose. Low knowledge capacity means you should specialize.
3. **Latency-sensitive** — on-device inference needs fast throughput.

### Architecture Innovations

- **Gated short convolutions** — replacing parts of attention for faster on-device speed. LFM uses convolutions on top of attention.
- **Large embedding layers are wasteful** — at small scales, embedding parameters eat a disproportionate share. Reducing vocabulary size is key. Smaller vocab → more parameters for actual transformer layers.

### Pre-training

- LFM 2.0: 2T tokens, 350M params, standard Transformer.
- LFM 2.5: 28T tokens across all model sizes. Significantly better than prior LFM 2 350M on GPQA Diamond, instruction following (IF Bench), data extraction (Case Report Bench), tool use (BFCL, Dow 2 Bench).
- More pre-training works even at the smallest scale and is cheap — these models are a lot cheaper to train than big ones.

### Post-Training Pipeline

1. **SFT** — supervised fine-tuning. Works best when narrow and focused. Fine-tune from Hugging Face for your own use case.
2. **Preference alignment** — on-policy length-normalized DPO. Brings general improvements across the board (sounds better, benchmark-agnostic).
3. **Reinforcement learning** — with verifiable rewards. Extremely effective at small scale.

### Doom Loops

- **Definition:** Models get stuck in reasoning loops — generating the same thought pattern repeatedly without escaping. Common in small reasoning models.
- **Baseline:** ~15-16% doom loop ratio after pre-training.
- **SFT barely helps** — wrong stage to fix it.
- **Solution 1: Preference alignment (DPO)** — generate 5 diverse rollouts via temperature sampling + 1 greedy (temp=0, expected to doom loop). LLM jury scores all. Chosen = highest score, rejected = worst. DPO trains model to not doom loop. This reduces the ratio significantly.
- **Solution 2: RL with verifiable rewards** — add n-gram repetition penalty. Also uses temperature sampling for diverse rollouts. Combined effect brings doom looping close to zero.
- **Context:** Off-the-shelf models like Gemma 3.5 0.8B in reasoning mode can hit 50%+ doom loops — which users complain about.

### Capability Interference

- At 1B scale, improving one capability can harm others. Requires careful curriculum training and iterative model merging. ^[inferred]
- Tradeoff is more acute than at larger scales.

### Agentic RL

- Training small models to call tools using RL with verifiable rewards.
- Temperature sampling generates diverse rollouts (not all will doom loop).
- LLM jury scores each rollout; chosen/rejected pairs feed preference alignment.
- Small models combined with agentic tools perform surprisingly well — this is currently underexplored.

### Use Cases for Small Models

- Offline deployment (car, edge devices with no internet)
- Latency-sensitive workloads (on-device is always faster)
- Regulated environments (finance, healthcare — privacy)

## Concepts

- [[concepts/agent-loop]] — Agentic RL is a form of agent loop; the evaluation (LLM jury, verifiable rewards) maps to the loop's evaluation requirement
- [[web-posthog-com-blog-stop-ai-slop]] — LLM-as-a-Judge eval pattern used here for scoring rollouts; same concept applied to model training

## Entities

- [[entities/maxime-labonne]] — Head of pre-training at Liquid AI, author of the LFM models
- [[entities/liquid-ai]] — Company building frontier small models for on-device deployment
-  — Platform where Liquid AI releases its models

## Open Questions

- Does distillation from a larger model fix doom loops without the DPO+RL pipeline? Labonne suspects no — it would be "too close to SFT."
- How well does curriculum training with iterative model merging scale to larger capability sets?
- Can small model + agentic tools truly replace general-purpose big models for most practical use cases?

## Related

- [[web-youtube-com-watch-v4f1gfy-hqg]] — Matt Pocock's talk on software fundamentals at the same conference
