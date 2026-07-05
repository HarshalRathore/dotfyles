---
title: "Faraday"
tags:
  - company
  - china
  - intermediary
  - hbm
  - supply-chain
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "Chinese company that receives HBM-packaged Faraday chips from Taiwan, extracts the HBM, and mounts it on Huawei Ascend processors."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04T23:59:00Z
relationships:
  - target: "[[entities/coasia|Coasia]]"
    type: buys_from
  - target: "[[entities/huawei|Huawei]]"
    type: supplies
  - target: "[[concepts/hbm-memory|HBM Memory]]"
    type: processes
---

# Faraday

**Faraday** is a Chinese company that serves as the final link in the HBM supply chain circumvention, receiving HBM-packaged dummy chips from Taiwan and extracting the memory for use in [[entities/huawei|Huawei]]'s Ascend processors.

## Role in HBM Circumvention

Faraday's role in the supply chain: ^[extracted]

1. Receives "Faraday chips" from [[entities/coasia|Coasia]] — these are essentially dummy chips with HBM packaged on them
2. Extracts the HBM from the Faraday chip
3. Mounts the extracted HBM onto Huawei Ascend processors

The Faraday chip itself "does literally nothing" — it exists solely as a legal workaround for HBM export restrictions. ^[extracted]

## Related

- [[entities/coasia|Coasia]] — Taiwanese intermediary
- [[entities/huawei|Huawei]] — End user
- [[entities/samsung|Samsung]] — Original HBM supplier
- [[concepts/hbm-memory|HBM Memory]] — Product category

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
