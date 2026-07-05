---
title: "Sanctions Circumvention"
tags:
  - geopolitics
  - supply-chain
  - sanctions
  - workarounds
  - hbm
category: concepts
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "Methods by which Chinese entities circumvent US sanctions and export controls on AI hardware through intermediaries, shell companies, and supply chain workarounds."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04T23:59:00Z
relationships:
  - target: "[[entities/huawei|Huawei]]"
    type: used_by
  - target: "[[entities/tsmc|TSMC]]"
    type: circumvents
  - target: "[[entities/coasia|Coasia]]"
    type: involves
  - target: "[[entities/faraday|Faraday]]"
    type: involves
  - target: "[[concepts/export-controls-ai-hardware|Export Controls on AI Hardware]]"
    type: responds_to
---

# Sanctions Circumvention

**Sanctions circumvention** refers to the methods by which Chinese entities bypass US export controls and sanctions on AI hardware, enabling continued access to advanced semiconductors and HBM memory.

## Chip Procurement Through Shell Companies

[[entities/huawei|Huawei]] accessed [[entities/tsmc|TSMC]]-manufactured chips through **Sofgo**, a Chinese cryptocurrency mining company that pretended to be unaffiliated with Huawei. Approximately 2.9 million chips worth were purchased before TSMC was forced to stop. ^[extracted]

## HBM Supply Chain Workaround

The most sophisticated circumvention method involves a multi-step supply chain for HBM (High Bandwidth Memory): ^[extracted]

1. [[entities/samsung|Samsung]] sells HBM to **Coasia** (Taiwanese company)
2. Coasia sells HBM to **Faraday** (Chinese company)
3. Faraday packages HBM into "Faraday chips" — dummy chips that "do literally nothing"
4. These packaged chips are shipped to China (appearing to be finished products, not restricted HBM)
5. In China, the HBM is extracted from the Faraday chip and mounted on Huawei Ascend processors

This entire chain is described as "completely legal" despite clearly circumventing the intent of the HBM export ban. ^[extracted]

## Key Enablers

- **Geographic routing** — Using Taiwan (Coasia) as an intermediary between South Korea (Samsung) and China
- **Product transformation** — Packaging HBM into dummy chips changes the product classification
- **Shell company opacity** — Sofgo's relationship with Huawei is not publicly acknowledged
- **Economic incentives** — TSMC, Samsung, and others have strong revenue motivation to find legal pathways

## Related

- [[entities/huawei|Huawei]] — Primary beneficiary
- [[entities/coasia|Coasia]] — Taiwanese intermediary
- [[entities/faraday|Faraday]] — Chinese chip packager
- [[entities/tsmc|TSMC]] — Original chip manufacturer
- [[concepts/export-controls-ai-hardware|Export Controls on AI Hardware]] — What is being circumvented
- [[concepts/china-us-ai-rivalry|China-US AI Rivalry]] — Strategic context

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
