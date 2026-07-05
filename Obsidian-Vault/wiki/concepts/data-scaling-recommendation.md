---
title: "Data Scaling in Recommendation"
category: concepts
tags:
  - data-scaling
  - scaling
  - recommendation-systems
  - user-behavior
aliases:
  - data scaling
  - data scaling in recsys
sources:
  - "[[sources/watchv=u0s6cfzay5c]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/360brew]]"
    type: demonstrated_by
  - target: "[[concepts/scaling-laws]]"
    type: related_to
---
# Data Scaling in Recommendation

Data scaling is the principle that increasing the amount of training data improves model performance. In [[concepts/360brew|360Brew]], data scaling was the first of three experimentally validated scaling levers for recommendation systems. ^[extracted]

## Findings

As LinkedIn increased the amount of user behavior data fed into the 360Brew model (spanning 6 months to a year of logged interactions), model performance consistently improved. The relationship between data volume and performance appears to be monotonic — more data leads to better results, with no sign of saturation in the observed range. ^[extracted]

## Data Sources

LinkedIn logs extensive user behavior data including:

- Profile information
- Interaction history (clicks, views, likes, applications)
- Items shown to users
- Time-based interaction patterns

This rich behavioral signal provides the training data needed for effective data scaling. ^[extracted]

## Related

- [[concepts/360brew|360Brew]] — data scaling is the first scaling lever
- [[concepts/scaling-laws|Scaling Laws]] — broader context on how model performance scales with data, compute, and model size
- [[concepts/model-size-scaling|Model Size Scaling]] — the second scaling lever in 360Brew
