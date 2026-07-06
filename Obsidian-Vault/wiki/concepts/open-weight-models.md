---
title: Open Weight Models
category: concepts
tags:
- open-source
- model-distribution
- open-weight
- llm
- aief2025
aliases:
- open weight
- open weight models
sources:
- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
summary: LLMs whose model weights are publicly released for download, enabling local inference, fine-tuning, and community evaluation. DeepSeek V3's Christmas Day release exemplified the disruptive potentia...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/local-models|Local Models]]'
  type: enables
- target: '[[concepts/proprietary-models|Proprietary Models]]'
  type: contrasts_with
---

# Open Weight Models

**Open weight models** are large language models whose internal weights (parameters) are publicly released for download and use. Unlike open-source models (which include training code, datasets, and full transparency), open-weight models release only the trained model weights — enabling local inference, fine-tuning, and community evaluation while keeping training methodology proprietary.

## Key Characteristics

Open-weight models enable: ^[inferred]

1. **Local inference** — Run the model on your own hardware without API calls
2. **Fine-tuning** — Adapt the model to specific domains or tasks
3. **Community evaluation** — Independent benchmarking without vendor influence
4. **No vendor lock-in** — No dependency on a specific cloud provider's API
5. **Open licensing** — Permission for commercial and research use

## DeepSeek V3: The Christmas Day Release

DeepSeek V3's release on Christmas Day 2024 was a landmark moment for open-weight models. The lab released a 685-billion-parameter model by dumping weights as a binary file on [[entities/huggingface|Hugging Face]] with no README and no documentation — described as "dropping the mic." ^[extracted]

The model was:

- The best available open-weight model at the time
- Freely available and openly licensed
- Trained for approximately $5.5 million (far below the expected $55M–$550M range)
- Released without any marketing or announcement

This release pattern demonstrated the disruptive potential of open-weight distribution: a model could bypass traditional launch channels, marketing budgets, and vendor gatekeeping to go directly to the community. ^[inferred]

## Llama as Open Weight

Meta's Llama models (including Llama 3.3 70B) are distributed as open-weight models, enabling the local-models movement that Simon Willison documented. The 70B variant fits on a consumer laptop with 64GB RAM while matching the capabilities of the 405B variant. ^[extracted]

## Related

- [[concepts/local-models|Local Models]] — open-weight models enable local inference
- [[entities/deepseek|DeepSeek]] — V3's unexpected release as a case study
- [[entities/meta|Meta]] — Llama as the foundation of the open-weight movement
- [[entities/huggingface|Hugging Face]] — the primary distribution platform

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
