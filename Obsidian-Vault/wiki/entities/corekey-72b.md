---
title: CoreKey 72B
category: entities
tags:
- ai-model
- non-transformer
- inference
- aief2025
- hf0-residency
- federalist-ai
summary: World's largest model without transformer attention, built by Federalist AI. Runs on only 8 GPUs with 1000x lower inference cost than comparable models. Techniques also applicable to existing trans...
sources:
- 'https://www.youtube.com/watch?v=l8-5ezsoi5a'
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/federalist-ai]]'
  type: implements
- target: '[[concepts/speculative-decoding]]'
  type: uses
---

# CoreKey 72B

CoreKey 72B is the world's largest model without transformer attention, built by Federalist AI. It was presented at the AI Engineer World's Fair 2025 as part of the HF0 Residency showcase.

## Key Specifications

- **Architecture**: Non-transformer attention mechanism ^[extracted]
- **Compute**: Runs on only 8 GPUs ^[extracted]
- **Inference cost**: 1000x lower inference cost than comparable transformer models ^[extracted]
- **Compatibility**: The techniques can also be applied to existing transformer models through speculative decoding ^[extracted]

## Significance

CoreKey 72B is a practical implementation of the "scaling is dead" thesis: rather than burning billions on bigger transformer models, Federalist AI invested in architectural innovation to achieve dramatically lower inference costs while maintaining competitive performance ^[inferred].

## Related

- [[entities/federalist-ai|Federalist AI]] — builder
- [[concepts/speculative-decoding|Speculative Decoding]] — technique for applying CoreKey to transformers
- [[concepts/scaling-is-dead-thesis|Scaling is Dead Thesis]] — architectural innovation over scaling
- [[references/aief2025-the-next-unicorns-7-top-ai-startups-hf0-residency|AIEF2025 The Next Unicorns]] — presentation
