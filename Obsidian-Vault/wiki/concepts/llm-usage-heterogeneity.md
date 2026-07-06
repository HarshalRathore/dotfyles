---
title: LLM Usage Heterogeneity
category: concepts
tags:
- llm
- multi-use
- adoption
- ai-engineering
summary: 'The finding that LLM usage is highly heterogeneous: 94% of LLM users employ at least two use cases, 82% use at least three, spanning internal and external applications across code generation, writi...'
sources:
- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/ai-adoption-acceleration|AI Adoption Acceleration]]'
  type: related_to
- target: '[[concepts/multimodal-production-gap|Multimodal Production Gap]]'
  type: related_to
---

# LLM Usage Heterogeneity

The 2025 State of AI Engineering Survey revealed that **LLM usage is highly heterogeneous** — teams don't just use LLMs for one thing, they use them for many things simultaneously. This multi-use pattern is the dominant adoption model, not single-purpose deployment.

## Key Data

- **94%** of LLM users employ at least **two** use cases
- **82%** use LLMs for at least **three** use cases
- Usage spans both **internal** (developer tools, internal processes) and **external** (customer-facing products) applications

## Top Use Cases

1. **Code generation**
2. **Code intelligence** (understanding, explaining, refactoring code)
3. **Writing assistant** (drafting, editing, formatting text)
4. **Content generation** (marketing copy, documentation, etc.)

## OpenAI Dominance in External Use

For externally-facing (customer-facing) use cases:
- **3 of the top 5** models are from OpenAI
- **Half of the top 10** models are from OpenAI
- This suggests OpenAI has a strong lead in production customer-facing deployments

## Implications

- **Multi-use teams are the norm**: Organizations that deploy LLMs tend to find multiple applications
- **Internal + external**: The boundary between internal tooling and customer-facing products is porous — the same LLM infrastructure often serves both
- **Model diversity**: Despite OpenAI's dominance in external use, the overall landscape is heterogeneous with many models in use

## Sources

- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
