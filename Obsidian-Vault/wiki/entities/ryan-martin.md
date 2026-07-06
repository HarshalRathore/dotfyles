---
title: "Ryan Martin"
category: entities
tags: [person, reasoning, open-source, sft, distillation, aief2025]
aliases: [ryan martin]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Founding engineer at Bespoke Labs. Speaker at AI Engineer World's Fair 2025 on OpenThoughts 3 — the state-of-the-art open reasoning dataset recipe."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[entities/bespoke-labs|Bespoke Labs]]"
    type: works_at
  - target: "[[concepts/open-thoughts-3|OpenThoughts 3]]"
    type: created
---

# Ryan Martin

**Ryan Martin** is a founding engineer at [[entities/bespoke-labs|Bespoke Labs]] and creator of the OpenThoughts project — an open-source effort to build the best reasoning dataset recipes.

## AI Engineer World's Fair 2025

Ryan spoke at the Reasoning + RL track at AI Engineer World's Fair 2025, announcing **OpenThoughts 3** as the state-of-the-art open reasoning dataset recipe. ^[extracted]

### OpenThoughts 3 Results

- Outperforms DeepSeek R1 1.7B (the model they started trying to reproduce)
- Outperforms NVIDIA's Nemotron-Nano on some benchmarks, competitive on others
- Measured across science (GPQA Diamond), code (Live Code Bench), and math (AIME)
- 1,000 experiments across the data pipeline, with 5,000+ datasets and 3,000 models created

### Key Learnings from the Dataset Recipe

- **Sampling multiple answers per question** works better than scaling questions linearly — 30K questions × 16 samples outperforms 30K questions × 1 sample by 16×
- **A better model is not necessarily a better teacher** — Qwen 32B was a stronger teacher than DeepSeek R1, even though R1 is stronger on benchmarks
- **Synthetic questions are better** than scraped forum data or human-written questions — and synthetic generation is scalable
- **Difficulty filtering works** — LLM-based difficulty labels and response length proxies outperform embeddings-based or text classifier approaches
- **Fewer high-quality sources beat more diverse sources** — counterintuitive, but optimizing for diversity hurt performance
- **Verification filtering didn't help for SFT/distillation** — keeping hard problems even with incorrect answers was more helpful
- **Domain-specific tuning matters** — difficulty labels worked for code but response length worked better for math/science
- **Distillation can surpass the teacher** — in the legal reasoning domain, a 7B model fine-tuned on distilled data surpassed R1

### Open-Source Tools

- **Curator** — open-source library for synthetic data generation
- **Evalchemy** — evaluation library on GitHub handling sharding and parallelism

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
