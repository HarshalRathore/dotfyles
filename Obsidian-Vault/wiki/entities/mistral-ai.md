---
title: "Mistral AI"
category: entities
tags:
  - company
  - ai
  - llm
  - open-source
  - french
  - aief2025
aliases:
  - Mistral
  - Mistral AI
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "French AI lab that released Mistral Small 3 (24B parameters), a model Simon Willison highlighted as the smallest that maintains GPT-4-class capabilities while fitting comfortably on a consumer laptop alongside other applications."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/meta|Meta]]"
    type: related_to
  - target: "[[concepts/local-models|Local Models]]"
    type: demonstrates
---

# Mistral AI

**Mistral AI** is a French AI laboratory focused on developing open-weight large language models. The company has been a key contributor to the local-models movement, producing models that fit on consumer hardware while maintaining capabilities competitive with larger proprietary models.

## Mistral Small 3

In January 2025, Mistral released **Mistral Small 3**, a 24-billion-parameter model. Simon Willison highlighted this as his favorite model from January because:

- At ~20 GB RAM, it fits on a consumer laptop alongside VS Code, Firefox, and other applications
- Mistral claimed it behaves the same as Llama 3.3 70B
- Llama 3.3 70B had been noted to match Meta's 405B model (GPT-4 class)
- This represents a capability chain: 405B → 70B → 24B while maintaining quality

Willison reported using Mistral Small 3 successfully for half a flight on his laptop before the battery drained — noting that "these things burn a lot more electricity" but emphasizing that local models had finally reached a point worth paying attention to. ^[extracted]

## Significance

Mistral Small 3 exemplifies the trend of capability retention through model efficiency improvements rather than raw parameter scaling. The ability to run a model that "behaves the same as Llama 70B" on a laptop with room for other applications marks a practical turning point for local AI. ^[inferred]

## Related

- [[entities/meta|Meta]] — Llama 3.3 70B as the reference point for capability
- [[concepts/local-models|Local Models]] — Mistral Small 3 as a practical local model
- [[concepts/model-size-scaling|Model Size Scaling]] — the 405B → 70B → 24B efficiency chain

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
