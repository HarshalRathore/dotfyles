---
title: Meta
category: entities
tags:
- company
- ai
- llm
- open-source
- facebook
- aief2025
aliases:
- Meta
- Meta Platforms
- Facebook
sources:
- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
summary: Tech company whose Llama 3.3 70B model was described by Simon Willison as matching the capabilities of its own 405B model, making GPT-4-class AI runnable on a three-year-old consumer laptop for the...
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
- target: '[[entities/huggingface|Hugging Face]]'
  type: distributes_through
- target: '[[concepts/local-models|Local Models]]'
  type: enables
---

# Meta

**Meta** (formerly Facebook) is a technology company that has become a major force in open-source AI through its Llama family of large language models. The Llama models are distributed as open-weight models, enabling researchers and developers to run, fine-tune, and build on them without vendor lock-in.

## Llama 3.3 70B

In December 2024, Meta released **Llama 3.3 70B** (70 billion parameters). Simon Willison described this as the most exciting release of December from his perspective:

- The 70B parameter count is roughly the maximum that fits on a consumer laptop with 64 GB of RAM
- Meta noted that Llama 3.3 70B had the same capabilities as their 405B model
- The 405B model was described as "GPT-4 class"
- This was the moment Willison could run a GPT-4 class model on a laptop he'd had for three years

Willison noted he never thought this was going to happen — he thought it was impossible. The 405B model consumed all available memory, but the 70B version made GPT-4-class capabilities practically accessible. ^[extracted]

## Llama Ecosystem

Meta's Llama models are distributed through [[entities/huggingface|Hugging Face]] as open-weight models, enabling:

- Local inference on consumer hardware
- Community fine-tuning and adaptation
- Competitive pressure on proprietary model providers
- The capability chain: 405B → 70B → 24B (Mistral Small 3) while maintaining quality

## Related

- [[entities/huggingface|Hugging Face]] — distribution platform for Llama models
- [[entities/mistral-ai|Mistral AI]] — Mistral Small 3 as the next step in the efficiency chain
- [[concepts/local-models|Local Models]] — Llama 3.3 70B as the breakthrough for local inference
- [[concepts/model-size-scaling|Model Size Scaling]] — the 405B → 70B → 24B progression

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
