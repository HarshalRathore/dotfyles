---
title: Local Models
category: concepts
tags:
- local
- on-device
- consumer-hardware
- open-source
- llm
- aief2025
aliases:
- local inference
- on-device models
- laptop models
sources:
- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
summary: LLMs that run on consumer hardware (laptops, desktops) without cloud dependency. By early 2025, models as small as 24B parameters (Mistral Small 3) achieved GPT-4-class capabilities, making local i...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-size-scaling|Model Size Scaling]]'
  type: relates_to
- target: '[[concepts/open-weight-models|Open Weight Models]]'
  type: enabled_by
- target: '[[concepts/reasoning-models|Reasoning Models]]'
  type: contrasts_with
---

# Local Models

**Local models** are large language models that run on consumer hardware (laptops, desktops) without requiring cloud API calls. By early 2025, the quality of local models had reached a practical tipping point, with models small enough to fit on a laptop delivering capabilities competitive with cloud-hosted proprietary models.

## The Capability Chain (Dec 2024 – Jan 2025)

Simon Willison documented a remarkable efficiency progression during this period: ^[extracted]

| Model | Parameters | RAM Required | Capability Level |
|-------|-----------|-------------|-----------------|
| Meta 405B | 405B | ~800GB+ | GPT-4 class (cloud only) |
| Llama 3.3 70B | 70B | ~64GB | Same as 405B (laptop possible) |
| Mistral Small 3 | 24B | ~20GB | Same as Llama 70B (laptop + other apps) |

This represented a three-step compression of capability: 405B → 70B → 24B while maintaining quality. Willison described it as "the most exciting trend in the past six months." ^[extracted]

## Practical Implications

By January 2025, Willison was using Mistral Small 3 for half a flight on his laptop before the battery drained — noting that "these things burn a lot more electricity" but emphasizing the practical achievement. ^[extracted]

The key practical implications: ^[inferred]

1. **Privacy** — No data leaves the device
2. **Cost** — No per-token API charges
3. **Availability** — Works offline, no network dependency
4. **Experimentation** — Easy to try different models without account setup
5. **Development** — Local models are useful for testing and debugging

## The "Local Models Are Good Now" Inflection Point

Willison noted that eight months before his talk (roughly mid-2024), the models he was running on his laptop were "kind of rubbish." By the time of the talk, local models had reached a point where he actively chose to use them for real work — marking a practical inflection point in the local-models movement.

## Related

- [[entities/meta|Meta]] — Llama 3.3 70B as the local-models breakthrough
- [[entities/mistral-ai|Mistral AI]] — Mistral Small 3 as the most practical local model
- [[concepts/model-size-scaling|Model Size Scaling]] — the efficiency chain enabling smaller models
- [[concepts/open-weight-models|Open Weight Models]] — the distribution model enabling local inference
- [[entities/simon-willison|Simon Willison]] — documented the trend through his personal experience

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
