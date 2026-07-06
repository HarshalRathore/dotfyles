---
title: Grok AI Chips
category: entities
tags: [ai-chips, hardware, xai, inference, ml-hardware]
summary: AI accelerator chips from xAI, explored by Luma AI through a partnership with Humane for Dream Machine inference workloads.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/humane]]"
    type: related_to
  - target: "[[entities/pytorch]]"
    type: related_to
  - target: "[[entities/nvidia]]"
    type: related_to
---

Grok AI Chips are AI accelerator chips developed by xAI (Elon Musk's AI company). They represent one of the emerging non-NVIDIA options for AI inference and training workloads.

## Role in Luma AI's Hardware Exploration

Luma AI is exploring Grok chips as an alternative inference hardware option through a significant partnership with [[entities/humane|Humane]], a company that "works really closely with" Grok chips. Keegan McCallum noted that while Luma has "nothing really deep yet" with Grok, the partnership with Humane provides a pathway to evaluate these chips for Dream Machine inference workloads.

## Luma's Multi-Vendor Hardware Strategy

Grok chips fit into Luma's broader hardware diversification strategy:

- **Primary**: NVIDIA H100 GPUs (current production)
- **Exploring**: AMD GPUs (PyTorch-compatible, performance optimization ongoing)
- **Early exploration**: Grok chips via Humane partnership
- **Other**: Amazon's custom chips (mentioned but not deeply evaluated)

The strategy centers on PyTorch compatibility — as long as a chipset supports PyTorch at a baseline version, Luma can run their models on it. Performance optimization happens over time through the Excel team's low-level work.
