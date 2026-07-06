---
title: Amazon Nova
category: entities
tags:
- amazon
- aws
- ai-models
- foundational-models
- generative-ai
- bedrock
sources:
- 'https://www.youtube.com/watch?v=rofhhjmumcc'
- 'https://www.youtube.com/watch?v=ht4l0dep69i'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Amazon Nova
---
# Amazon Nova

Amazon's family of foundational AI models, available through [[entities/amazon-bedrock|Amazon Bedrock]]. Mentioned by [[entities/mani-khanuja|Mani Khanuja]] at AIEF2025 as one of the model providers available on Bedrock.

## Positioning

Nova models are part of Amazon's strategy to provide customers with multiple model choices through Bedrock's unified API, alongside models from Anthropic, Meta, Mistral AI, and AI21 Labs. ^[extracted]

## Relationship to Bedrock

Nova models are natively integrated into the Bedrock ecosystem, making them the default Amazon option for developers building generative AI applications on the platform. ^[inferred]

## Simon Willison's Assessment (Dec 2024)

[[entities/simon-willison|Simon Willison]] highlighted Amazon Nova at AIEF2025 as Amazon's first competitive model family: ^[extracted]

- **1 million token context windows** — the largest context capacity among models he tracked
- **Extremely low pricing** — Nova Micro is the cheapest model Willison tracks
- **Behavior** — "behave like the cheaper Gemini models"
- **Pelican SVG** — "unimpressive" on the pelican-on-bicycle benchmark, but the models are "a million token contacts" and "worth knowing about"


## Related Pages

- [[entities/amazon-bedrock|Amazon Bedrock]] — Platform where Nova models are available
- [[entities/amazon-bedrock-agents|Amazon Bedrock Agents]] — Managed agent service that can use Nova models
- [[entities/aws|AWS]] — Parent organization
