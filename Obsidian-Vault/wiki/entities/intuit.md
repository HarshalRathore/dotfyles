---
title: "Intuit"
category: entities
tags:
  - company
  - fintech
  - tax
  - gen-ai
  - enterprise-ai
aliases:
  - Intuit
  - Intuit Inc.
sources:
  - "AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/turbotax|TurboTax]]"
    type: owns
  - target: "[[entities/intuit-assist|Intuit Assist]]"
    type: operates
  - target: "[[entities/anthropic|Anthropic]]"
    type: uses
  - target: "[[entities/openai|OpenAI]]"
    type: uses
---

# Intuit

Intuit is a financial software company best known for TurboTax, which successfully processed 44 million tax returns for tax year 2023. ^[extracted]

The company operates in the regulatory business, where safety and security are paramount. This regulatory context drives their approach to Gen AI — requiring a proprietary platform (GenOS) that supports fine-grained evaluation, human-in-the-loop quality control, and vendor-agnostic model selection. ^[extracted]

Intuit has a multi-million dollar contract with Anthropic and also uses OpenAI for other question-and-answering use cases. They maintain proprietary tax engines and tax information systems that feed into their LLM solutions. ^[extracted]

The company employs many tax analysts who serve dual roles as domain experts and prompt engineers, bridging the gap between the data science/ML team and regulatory knowledge. ^[extracted]

## Related

- [[entities/turbotax|TurboTax]] — Flagship product, the primary Gen AI application surface
- [[entities/intuit-assist|Intuit Assist]] — Intuit's branded Gen AI experience platform
- [[entities/jaspreet-singh|Jaspreet Singh]] — Senior staff engineer presenting on their LLM usage
