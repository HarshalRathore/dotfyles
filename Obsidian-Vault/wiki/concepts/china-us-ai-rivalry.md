---
title: "China-US AI Rivalry"
tags:
  - geopolitics
  - ai-infrastructure
  - export-controls
  - semiconductor
  - compute
category: concepts
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "The strategic competition between the US and China for AI supremacy, centered on semiconductor access, export controls, and the effectiveness of hardware restrictions."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04T23:59:00Z
relationships:
  - target: "[[entities/huawei|Huawei]]"
    type: central_to
  - target: "[[entities/nvidia|NVIDIA]]"
    type: central_to
  - target: "[[entities/tsmc|TSMC]]"
    type: central_to
  - target: "[[concepts/export-controls-ai-hardware|Export Controls on AI Hardware]]"
    type: uses
  - target: "[[concepts/sanctions-circumvention|Sanctions Circumvention]]"
    type: involves
---

# China-US AI Rivalry

The **China-US AI rivalry** is the strategic competition between the United States and China for dominance in artificial intelligence, with the semiconductor supply chain as the primary battlefield.

## Export Controls and Their Effectiveness

The US has attempted to restrict China's access to advanced AI hardware through export controls on GPUs, HBM, and semiconductor manufacturing equipment. However, these controls have proven largely ineffective at preventing Chinese access to compute: ^[extracted]

- [[entities/huawei|Huawei]] accesses [[entities/tsmc|TSMC]]-manufactured chips through intermediary companies (e.g., Sofgo, a cryptocurrency mining company)
- [[entities/samsung|Samsung]] sells HBM to [[entities/coasia|Coasia]] in Taiwan, which packages it into Faraday chips for shipment to China
- The US fined [[entities/tsmc|TSMC]] ~$1 billion for ~$500M in revenue from Huawei sales — described as a "slap on the wrist"
- Despite a complete HBM ban, Huawei has stacked ~13 million HBM stacks and continues receiving shipments

## China's Domestic Manufacturing

The assumption that China cannot produce advanced AI chips domestically is incorrect: ^[extracted]

- [[entities/smich|SMIC]], China's domestic foundry, has mastered 7nm manufacturing for smartphone chips
- SMIC is expected to transition to 7nm AI chip production at high volumes within the year
- Once complete, China could produce millions of AI chips annually, reducing reliance on TSMC

## DeepSeek as a Case Study

[[entities/deepseek|DeepSeek]] has announced plans to use [[entities/huawei|Huawei]] Ascend chips for training next-generation models, demonstrating that Chinese AI labs can achieve advanced capabilities without access to NVIDIA's latest GPUs. ^[extracted]

## NVIDIA's Perspective

[[entities/nvidia|NVIDIA]]'s CFO Colette Kress stated on an earnings call that without export restrictions, NVIDIA would have sold $50 billion worth of GPUs to China in a single year. The H20 ban (a cut-down H100/H200) blocked approximately one million GPUs from reaching China. ^[extracted]

## Key Insight

The China-US AI rivalry demonstrates that hardware export controls are structurally difficult to enforce in a globalized supply chain. Companies find legal workarounds, and China's domestic manufacturing capability is advancing faster than Western analysts assumed. ^[inferred]

## Related

- [[concepts/export-controls-ai-hardware|Export Controls on AI Hardware]] — US policy mechanism
- [[concepts/sanctions-circumvention|Sanctions Circumvention]] — How companies bypass restrictions
- [[entities/huawei|Huawei]] — China's AI chip leader
- [[entities/nvidia|NVIDIA]] — US GPU leader affected by controls
- [[concepts/stargate-project|Stargate Project]] — Middle East dimension of compute geopolitics

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
