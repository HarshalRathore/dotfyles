---
title: "Stargate Project"
tags:
  - ai-infrastructure
  - middle-east
  - data-center
  - uae
  - saudi-arabia
  - compute
category: concepts
sources:
  - "AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0"
summary: "The Stargate project — a massive AI infrastructure initiative in the Middle East involving 5+ gigawatts of data center capacity, led by G42 in the UAE with Saudi Arabia's Data Vault."
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
  - target: "[[entities/g42|G42]]"
    type: built_by
  - target: "[[concepts/middle-east-ai-deal|Middle East AI Deal]]"
    type: enabled_by
  - target: "[[entities/microsoft|Microsoft]]"
    type: invests_in
---

# Stargate Project

The **Stargate Project** is a massive AI infrastructure initiative in the Middle East, centered on the UAE and Saudi Arabia, involving data center capacity measured in gigawatts — orders of magnitude larger than any existing AI data center.

## Scale

Stargate's scale dwarfs existing AI infrastructure: ^[extracted]

- **Total capacity**: 5+ gigawatts across the full project
- **First six phases**: 1.2 gigawatts
- **G42's UAE campus**: 5 gigawatts (single complex)
- For comparison: [[entities/xai|xAI]]'s data centers are ~200 megawatts; OpenAI and others are 200MW or less

## G42's GPU Deal

The Stargate project is enabled by a deal between the UAE and US: ^[extracted]

- [[entities/g42|G42]] can purchase **500,000 GPUs per year**
- G42 keeps **20%** for its own use
- **80%** must go to US hyperscalers, cloud companies, and AI companies
- [[entities/microsoft|Microsoft]] is G42's investor and primary customer

## OpenAI Connection

The deal includes an unstated component: [[entities/openai|OpenAI]] will have a GPU cluster in the Middle East, consistent with Sam Altman's earlier statements about building GPU clusters there. ^[inferred]

## Saudi Arabia Component

The **Data Vault** company, part of Saudi Arabia's "The Line" project in NEOM, is also building data center infrastructure as part of the broader Stargate ecosystem. ^[extracted]

## US Benefits

The US receives several benefits from the deal: ^[extracted]

- 80% of compute goes to US companies
- UAE provides matching investments — for every dollar spent on AI infrastructure in the UAE, UAE also spends in the US
- G42 has sites in Kentucky and New York where this investment is flowing

## Related

- [[entities/g42|G42]] — Primary builder in UAE
- [[entities/microsoft|Microsoft]] — Investor and customer
- [[entities/openai|OpenAI]] — Beneficiary of Middle East cluster
- [[concepts/middle-east-ai-deal|Middle East AI Deal]] — The GPU allocation agreement
- [[entities/saudi-arabia|Saudi Arabia]] — NEOM/The Line component

## Sources

- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
