---
title: "Huawei"
tags:
  - company
  - china
  - semiconductor
  - ai
  - gpu
  - sanctioned
  - telecommunications
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "Chinese technology giant that has developed competitive AI chips (Ascend 910B/C) and large-scale GPU cluster architectures, circumventing US sanctions through complex supply chains."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04T23:59:00Z
relationships:
  - target: "[[entities/tsmc|TSMC]]"
    type: uses
  - target: "[[entities/smich|SMIC]]"
    type: related_to
  - target: "[[entities/nvidia|NVIDIA]]"
    type: competes_with
  - target: "[[entities/samsung|Samsung]]"
    type: uses
  - target: "[[entities/deepseek|DeepSeek]]"
    type: supplies
  - target: "[[concepts/hbm-memory|HBM Memory]]"
    type: uses
  - target: "[[concepts/china-us-ai-rivalry|China-US AI Rivalry]]"
    type: central_to
---

# Huawei

**Huawei** is a Chinese technology company that has become one of the most consequential players in the global AI infrastructure landscape, despite being a sanctioned entity in a sanctioned country.

## Ascend Chip Line

Huawei's AI chip strategy centers on the **Ascend 910B** and **910C** processors. These chips are manufactured by [[entities/tsmc|TSMC]] through intermediaries, allowing Huawei to access advanced semiconductor manufacturing despite US sanctions. ^[extracted]

### Cloud Matrix 384

Huawei has built a large-scale cluster architecture called **Cloud Matrix 384**, consisting of 384 Ascend chips connected across 12 racks using optical interconnects. This is notable because: ^[extracted]

- It mirrors an architecture that [[entities/nvidia|NVIDIA]] attempted to deploy as the DGX H100 Ranger (256 GPUs in a single NVLink network with optics) but failed to bring to production due to cost, power consumption, and reliability issues
- Huawei succeeded where NVIDIA failed, using optics for high-bandwidth scale-up networking between chips
- The system is power-hungry and potentially less reliable than rack-local copper connections, but China's manufacturing scale keeps costs competitive

## Supply Chain Circumvention

Despite US sanctions, Huawei has maintained access to critical components through complex workarounds: ^[extracted]

1. **TSMC chips** — Chinese cryptocurrency mining company Sofgo (pretending to be unaffiliated with Huawei) purchased approximately 2.9 million chips worth from TSMC before TSMC was forced to stop
2. **HBM memory** — Samsung sells HBM to Coasia (Taiwan), which packages it into "Faraday" chips (essentially dummy chips), ships them to China, where the HBM is extracted and mounted on Ascend processors
3. **Packaging equipment** — Sourced from US, Netherlands, and Japan through non-Huawei entities

Huawei has already stacked roughly 13 million HBM stacks and continues receiving shipments. ^[extracted]

## Manufacturing Evolution

- **TSMC** — Currently manufacturing Ascend chips for Huawei (7nm-class), but this is under US pressure
- **SMIC** — China's domestic foundry is expected to begin manufacturing 7nm AI chips at high volumes within the year, having already mastered 7nm for smartphone chips

## Strategic Impact

- [[entities/deepseek|DeepSeek]] has announced plans to use Huawei Ascend chips for training next-generation models
- The assumption that China will lack equivalent AI compute is incorrect — China will have substantial compute capacity
- US export controls have proven largely ineffective at preventing Chinese access to advanced AI hardware

## Related

- [[entities/tsmc|TSMC]] — Chip manufacturer
- [[entities/smich|SMIC]] — Chinese domestic foundry
- [[entities/nvidia|NVIDIA]] — Competitor in AI chips
- [[entities/deepseek|DeepSeek]] — Chinese AI lab using Huawei chips
- [[entities/dylan-patel|Dylan Patel]] — Analyst covering Huawei

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
