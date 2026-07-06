---
title: Samsung
tags:
- company
- south-korea
- semiconductor
- hbm
- memory
sources:
- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
summary: South Korean technology conglomerate and major HBM (High Bandwidth Memory) manufacturer, selling to Chinese intermediaries despite export restrictions.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04 23:59:00+00:00
relationships:
- target: '[[entities/huawei|Huawei]]'
  type: supplies
- target: '[[entities/sk-hynix|SK Hynix]]'
  type: competes_with
- target: '[[concepts/hbm-memory|HBM Memory]]'
  type: produces
category: entities
---

# Samsung

**Samsung** is a South Korean technology conglomerate and one of the world's leading semiconductor manufacturers, including a dominant position in HBM (High Bandwidth Memory).

## HBM Supply to China

Despite a complete ban on HBM sales to China, Samsung has maintained supply through an indirect channel: ^[extracted]

- Samsung sells HBM to **Coasia**, a company in Taiwan
- Coasia packages the HBM into "Faraday" chips (essentially dummy chips that do nothing)
- These packaged chips are shipped to China
- In China, the HBM is extracted from the Faraday chips and mounted on [[entities/huawei|Huawei]]'s Ascend processors

This supply chain workaround is described as "completely legal" despite circumventing the spirit of export restrictions. ^[extracted]

## HBM Market Position

- Samsung and [[entities/sk-hynix|SK Hynix]] are the two primary HBM manufacturers
- [[entities/huawei|Huawei]] has stacked approximately 13 million HBM stacks and continues receiving shipments
- HBM is a critical bottleneck for AI chip performance, making this supply chain significant

## Related

- [[entities/sk-hynix|SK Hynix]] — Competing HBM manufacturer
- [[entities/huawei|Huawei]] — End user through intermediaries
- [[entities/coasia|Coasia]] — Taiwanese intermediary
- [[concepts/hbm-memory|HBM Memory]] — Product category

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
