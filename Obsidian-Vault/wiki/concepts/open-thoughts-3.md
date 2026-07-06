---
title: "OpenThoughts 3"
category: concepts
tags: [open-source, reasoning, dataset, sft, distillation, aief2025]
aliases: [openthoughts, openthoughts-3]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "The state-of-the-art open reasoning dataset recipe from Bespoke Labs, produced through 1,000 experiments. Outperforms DeepSeek R1 1.7B and Nemotron-Nano on key benchmarks."
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
  - target: "[[entities/ryan-martin|Ryan Martin]]"
    type: created_by
  - target: "[[entities/bespoke-labs|Bespoke Labs]]"
    type: produced_by
  - target: "[[concepts/sft|SFT]]"
    type: used_by
  - target: "[[concepts/distillation|Distillation]]"
    type: uses
---

# OpenThoughts 3

**OpenThoughts 3** is the state-of-the-art open reasoning dataset recipe from [[entities/bespoke-labs|Bespoke Labs]], announced at AI Engineer World's Fair 2025. It was produced through 1,000 experiments, creating 5,000+ datasets and 3,000 models. ^[extracted]

## Results

- **Outperforms DeepSeek R1 1.7B** — the model they started trying to reproduce
- **Outperforms NVIDIA's Nemotron-Nano** on some benchmarks, competitive on others
- Measured across: **AIME** (competitive math), **Live Code Bench** (competitive code), **GPQA Diamond** (science questions)
- Shifts the scaling curve upward — same data scale, higher accuracy

## Dataset Pipeline

The data pipeline has six steps: ^[extracted]

1. **Sourcing questions** — from various sources including synthetic generation
2. **Mixing sources** — combining different question sources
3. **Filtering questions** — by difficulty (LLM-based difficulty labels or response length)
4. **Generating answers** — teacher model distillation
5. **Filtering bad answers** — quality control
6. **Teacher model selection** — choosing the best teacher for each domain

## Key Findings

- **Multiple answers per question** — sampling 16 answers per question outperforms 16× more questions with 1 answer each
- **Qwen 32B > DeepSeek R1 as teacher** — benchmark strength doesn't correlate with teaching quality
- **Synthetic questions > scraped/human questions** — and synthetic generation is scalable
- **Difficulty filtering** — LLM-based difficulty labels for code, response length for math/science
- **Fewer high-quality sources > more diverse sources** — counterintuitive
- **Verification filtering didn't help for SFT** — keeping hard problems with incorrect answers was more helpful

## Domain-Specific Tuning

- **Code** — difficulty labels work well
- **Math** — response length is a better proxy (math answers are short numbers)
- **Science** — response length works better

## Open-Source Ecosystem

- **Curator** — synthetic data generation library
- **Evalchemy** — evaluation library with sharding and parallelism
- Weights, datasets, and all code are open source

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
