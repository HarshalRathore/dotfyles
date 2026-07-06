---
title: Coasia
tags:
- company
- taiwan
- intermediary
- hbm
- supply-chain
sources:
- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
summary: Taiwanese company that serves as an intermediary in the HBM supply chain, purchasing HBM from Samsung and packaging it into Faraday chips for shipment to China.
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04 23:59:00+00:00
relationships:
- target: '[[entities/samsung|Samsung]]'
  type: buys_from
- target: '[[entities/faraday|Faraday]]'
  type: supplies
- target: '[[entities/huawei|Huawei]]'
  type: indirectly_supplies
- target: '[[concepts/hbm-memory|HBM Memory]]'
  type: processes
category: entities
---

# Coasia

**Coasia** is a Taiwanese company that serves as an intermediary in the HBM (High Bandwidth Memory) supply chain, enabling Samsung to sell HBM to China despite a complete export ban.

## Supply Chain Role

Coasia's role in the circumvention chain: ^[extracted]

1. Purchases HBM from [[entities/samsung|Samsung]]
2. Sells it to [[entities/faraday|Faraday]] for packaging into dummy chips
3. Faraday chips are shipped to China
4. HBM is extracted in China and mounted on [[entities/huawei|Huawei]]'s Ascend processors

This supply chain is described as "completely legal" despite clearly circumventing the intent of US export restrictions on HBM to China. ^[extracted]

## Related

- [[entities/samsung|Samsung]] — HBM supplier
- [[entities/faraday|Faraday]] — Chip packaging intermediary
- [[entities/huawei|Huawei]] — End user
- [[concepts/hbm-memory|HBM Memory]] — Product category

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
