---
title: "Together AI"
category: entities
tags: [company, ai-infrastructure, open-source-models, inference-api, aief2025]
summary: AI cloud platform providing inference API for open source models across all modalities, plus fine-tuning, dedicated instances, and GPU cluster products.
sources: ["AIEF2025 - Using OSS models to build AI apps with millions of users — Hassan El Mghari - https://www.youtube.com/watch?v=gcseUQJ6Gbg"]
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/open-source-ai]]"
    type: related_to
  - target: "[[entities/hassan-el-mghari]]"
    type: related_to
---

# Together AI

**Together AI** is an AI cloud platform focused on open source models. It provides an inference API for querying virtually any open source model, along with products for fine-tuning, dedicated instances, and GPU cluster training.

## Model Coverage

Together AI supports models across nearly all modalities:

- **Chat models** — e.g., Qwen 3
- **Reasoning models** — e.g., DeepSeek R1
- **Image models** — e.g., Flux/Context models
- **Vision models**
- **Audio models**

## Products

- **Inference API** — Query any open source model
- **Fine-tuning** — Fine-tune models on your own data
- **Dedicated instances** — Run models on dedicated hardware
- **GPU cluster** — Training cluster product for custom training workloads

## Role in the Open Source AI Ecosystem

Together AI serves as infrastructure for builders who want to use open source models without managing their own inference stack. Hassan El Mghari, who leads developer relations at Together AI, uses the platform for all of his personal AI app projects, demonstrating its viability for production-scale applications (some of his apps serve millions of users). ^[extracted]
