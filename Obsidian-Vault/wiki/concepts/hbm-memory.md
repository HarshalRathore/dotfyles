---
title: "HBM Memory"
tags:
  - semiconductor
  - memory
  - ai-hardware
  - hbm
  - gpu
category: concepts
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "High Bandwidth Memory — critical memory technology for AI accelerators, subject to US export bans to China but reaching Chinese manufacturers through complex supply chains."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04T23:59:00Z
relationships:
  - target: "[[entities/huawei|Huawei]]"
    type: used_by
  - target: "[[entities/nvidia|NVIDIA]]"
    type: used_by
  - target: "[[entities/samsung|Samsung]]"
    type: produced_by
  - target: "[[entities/sk-hynix|SK Hynix]]"
    type: produced_by
  - target: "[[entities/faraday|Faraday]]"
    type: packaged_by
---

# HBM Memory

**HBM** (High Bandwidth Memory) is a type of 3D-stacked DRAM that provides significantly higher bandwidth than conventional memory, making it essential for AI accelerator chips like GPUs and TPUs.

## Strategic Importance

HBM is a critical bottleneck in AI hardware production. Without sufficient HBM, even the most powerful compute chips cannot achieve their performance potential because memory bandwidth limits data delivery to the processing cores. ^[extracted]

## US Export Ban and Circumvention

The US has imposed a complete ban on HBM sales to China. However, this ban has been circumvented through a multi-step supply chain: ^[extracted]

- [[entities/samsung|Samsung]] sells HBM to [[entities/coasia|Coasia]] (Taiwan)
- Coasia sells to [[entities/faraday|Faraday]] (China), which packages HBM into dummy chips
- These chips are shipped to China, where HBM is extracted and mounted on [[entities/huawei|Huawei]] Ascend processors
- This chain is described as "completely legal" despite circumventing the ban's intent

## Supply Scale

- [[entities/huawei|Huawei]] has stacked approximately **13 million HBM stacks** and continues receiving shipments
- [[entities/samsung|Samsung]] and [[entities/sk-hynix|SK Hynix]] are the two primary HBM manufacturers
- The ban has not significantly reduced Huawei's HBM access

## Related

- [[entities/huawei|Huawei]] — Major Chinese user
- [[entities/nvidia|NVIDIA]] — Primary Western user
- [[entities/samsung|Samsung]] — Major manufacturer
- [[entities/sk-hynix|SK Hynix]] — Major manufacturer
- [[entities/faraday|Faraday]] — HBM extraction intermediary
- [[concepts/sanctions-circumvention|Sanctions Circumvention]] — How HBM reaches China

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
