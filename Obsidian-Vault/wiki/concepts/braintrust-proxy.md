---
title: "Braintrust Proxy"
category: concepts
tags:
  - braintrust
  - model-agnostic
  - proxy
  - model-switching
  - production-ai
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "A proxy layer that enables switching between model providers without changing application code. Supports model-agnostic evaluation so new models can be tested with minimal friction.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]]"
    type: enables
  - target: "[[concepts/model-picking|Model Picking]]"
    type: relates_to
  - target: "[[concepts/braintrust|Braintrust]]"
    type: part_of
---

# Braintrust Proxy

The [[entities/braintrust|Braintrust]] Proxy is a proxy layer that enables switching between model providers without changing any application code. ^[extracted]

## Purpose

The proxy abstracts model provider differences so that:

- New models from any provider can be tested with minimal code changes
- Evals can compare models across providers on the same dataset
- The 24-hour model integration goal becomes achievable (see [[concepts/three-signs-evals-provide-value|Three Signs Evals Provide Value]]) ^[extracted]

## Usage

With the proxy, testing a new model is a matter of configuration — a few keystrokes to point at a new model endpoint. ^[extracted] This enables the practice of building [[concepts/ambitious-evals-for-future-models|ambitious evals for future models]] and immediately testing new releases. ^[inferred]

## Broader Ecosystem

The proxy pattern is not unique to Braintrust — similar tools exist across the ecosystem for model abstraction. ^[extracted]

## Related

- [[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]] — The practice the proxy enables
- [[concepts/model-picking|Model Picking]] — Evaluating and selecting models
- [[concepts/braintrust|Braintrust]] — The platform that provides the proxy
