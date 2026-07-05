---
title: "Export Controls on AI Hardware"
tags:
  - geopolitics
  - export-controls
  - semiconductor
  - gpu
  - hbm
  - policy
category: concepts
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "US export controls restricting China's access to advanced GPUs, HBM, and semiconductor manufacturing equipment — and why they have proven largely ineffective."
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
  - target: "[[entities/nvidia|NVIDIA]]"
    type: affects
  - target: "[[entities/huawei|Huawei]]"
    type: affects
  - target: "[[entities/tsmc|TSMC]]"
    type: affects
  - target: "[[concepts/china-us-ai-rivalry|China-US AI Rivalry]]"
    type: central_to
  - target: "[[concepts/sanctions-circumvention|Sanctions Circumvention]]"
    type: drives
---

# Export Controls on AI Hardware

**Export controls on AI hardware** are US government restrictions designed to limit China's access to advanced semiconductors, GPUs, HBM (High Bandwidth Memory), and semiconductor manufacturing equipment.

## Key Restrictions

- **GPU exports** — Advanced NVIDIA GPUs (H100, A100) cannot be sold to China. A cut-down version (H20) was also subsequently banned
- **HBM memory** — Complete ban on HBM sales to China
- **Manufacturing equipment** — Restrictions on EUV lithography and other advanced chip-making tools
- **TSMC compliance** — TSMC fined ~$1 billion for selling chips to Huawei through intermediaries

## Impact Assessment

The effectiveness of these controls is questionable: ^[extracted]

- **NVIDIA's own CFO** stated that without export restrictions, they would have sold $50B in GPUs to China in one year. The H20 ban blocked ~1 million GPUs
- [[entities/huawei|Huawei]] continues to access TSMC chips through intermediaries (2.9M chips worth before TSMC was forced to stop)
- HBM reaches China through a multi-step supply chain (Samsung → Coasia → Faraday → Huawei)
- [[entities/tsmc|TSMC]]'s $1B fine for ~$500M in revenue is described as a "slap on the wrist"

## Structural Weakness

Export controls face inherent enforcement challenges in a globalized supply chain: ^[inferred]

1. **Shell companies** — Entities like Sofgo can pretend to be unaffiliated with sanctioned companies
2. **Multi-step routing** — HBM passes through Taiwan (Coasia), is packaged into dummy chips (Faraday), then shipped to China
3. **Economic incentives** — Companies like TSMC and Samsung have strong revenue motivation to maximize sales
4. **Domestic alternatives** — China's SMIC foundry is advancing rapidly toward 7nm AI chip production

## Related

- [[entities/nvidia|NVIDIA]] — Primary target of GPU export controls
- [[entities/huawei|Huawei]] — Primary target of comprehensive sanctions
- [[entities/tsmc|TSMC]] — Foundry fined for sanctions violations
- [[concepts/china-us-ai-rivalry|China-US AI Rivalry]] — Broader context
- [[concepts/sanctions-circumvention|Sanctions Circumvention]] — Workaround mechanisms

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
