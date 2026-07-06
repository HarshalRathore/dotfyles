---
title: LLM-User Behavior Alignment
category: concepts
tags: [llm, user-behavior, e-commerce, prompt-engineering, alignment, aief2025]
summary: "The challenge that LLMs trained on general web data misalign with domain-specific user behavior, requiring contextual grounding (like top-K conversions) to produce useful outputs."
sources:
  - "https://www.youtube.com/watch?v=pjavhm_3ljg"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/query-understanding]]"
    type: related_to
  - target: "[[concepts/domain-expert-product-manager]]"
    type: related_to
  - target: "[[concepts/reliability-over-intelligence]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# LLM-User Behavior Alignment

General-purpose LLMs, trained on broad web data, often misalign with domain-specific user behavior. This creates a gap between what an LLM predicts and what actual users want in a given context. ^[extracted]

## The Problem

Instacart's experience illustrates this clearly. When users type "protein" into Instacart's search, they're looking for protein shakes, protein bars, and protein supplements. However, a general LLM predicts chicken, tofu, and other protein-rich foods — technically correct from a nutritional standpoint but wrong for the Instacart user context. ^[extracted]

This mismatch occurs because the LLM has no inherent understanding of:

- **Domain-specific vocabulary**: What "protein" means in a grocery context vs. a nutrition context
- **Platform-specific behavior**: What users actually click on and purchase on this specific platform
- **Temporal patterns**: How user intent shifts over time or seasonally

## The Solution: Contextual Grounding

Instacart solved this by restructuring the problem. Instead of asking the LLM to predict categories from scratch (open-ended), they:

1. Pre-computed the top-K converting categories for each query from historical engagement data
2. Fed those categories as context to the LLM
3. Asked the LLM to rank, validate, and refine — a much simpler task

This simplified the problem significantly and aligned the LLM's output with actual user behavior. ^[extracted]

## Broader Implications

This pattern — using engagement data to ground LLM predictions — is a general principle for deploying LLMs in production systems where user behavior matters more than raw model intelligence. ^[inferred]

## Related Concepts

- [[concepts/query-understanding]] — Where this alignment problem manifests most critically
- [[concepts/reliability-over-intelligence]] — The broader principle that reliable domain-specific outputs beat general intelligence
- [[concepts/domain-expert-product-manager]] — Building domain expertise into AI systems
