---
title: "Scaling Limits"
category: concepts
tags:
  - scaling
  - compute
  - diminishing-returns
  - llm
  - aief2025
aliases:
  - scaling limits
  - scaling ceiling
  - compute scaling limits
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "The observation that throwing more money and compute at LLM training has diminishing returns, demonstrated by GPT-4.5's failure despite enormous investment and its rapid deprecation."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/training-cost-efficiency|Training Cost Efficiency]]"
    type: contrasts_with
  - target: "[[concepts/model-size-scaling|Model Size Scaling]]"
    type: qualifies
  - target: "[[concepts/reasoning-model-pricing|Reasoning Model Pricing]]"
    type: relates_to
---

# Scaling Limits

**Scaling limits** refers to the observation that increasing model size, training compute, and budget does not produce proportional improvements in model quality. The GPT-4.5 release in February 2025 served as a cautionary demonstration of this principle.

## The GPT-4.5 Case Study

Simon Willison described GPT-4.5 as "a bit of a lemon" — a model that consumed enormous resources but delivered disappointing results: ^[extracted]

- **$75 per million input tokens** — extremely expensive
- **750× more expensive than GPT-4o Nano** — but not 750× better
- **Deprecated six weeks after release** — "not long for this world"
- **Demonstrated a scaling ceiling** — showed that "you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute at the problem"

Willison's key insight was that scaling laws have a boundary: ^[extracted]

> "The interesting thing about GPT 4.5 is it kind of showed that you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute at the problem, at least for training the models."

## Implications

The scaling limits observation has several important implications for the field: ^[inferred]

1. **Algorithmic progress matters more than scale** — Once a threshold of compute is reached, training methodology and data quality become more important than raw parameter count
2. **Efficiency over size** — The 405B → 70B → 24B capability chain (Llama → Mistral) shows that smaller, more efficient models can match larger ones
3. **Market signals** — GPT-4.5's rapid deprecation suggests the market (and OpenAI) recognized the poor cost-quality tradeoff
4. **Reasoning models as a different path** — Rather than scaling training compute, the industry pivoted toward reasoning models (Claude 3.7 Sonnet, DeepSeek R1) that improve quality through inference-time compute rather than training-time compute

## Related

- [[concepts/training-cost-efficiency|Training Cost Efficiency]] — lower costs challenge the "throw money at it" approach
- [[concepts/model-size-scaling|Model Size Scaling]] — scaling still works but with diminishing returns
- [[concepts/reasoning-model-pricing|Reasoning Model Pricing]] — alternative path beyond training-scale
- [[concepts/local-models|Local Models]] — efficiency gains make smaller models competitive

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
