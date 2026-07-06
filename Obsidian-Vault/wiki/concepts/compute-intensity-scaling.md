---
title: Compute Intensity Scaling
category: concepts
tags:
- compute
- video-generation
- scaling
- ai-infrastructure
sources:
- 'https://www.youtube.com/watch?v=p370d8kmlkw'
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/generative-video-vs-image]]'
  type: related_to
- target: '[[entities/fal]]'
  type: related_to
summary: Compute Intensity Scaling
---

# Compute Intensity Scaling

Video generation models are approximately 20× more compute-intensive than image generation models. This compute differential is a key factor in predicting that the generative video market will ultimately be 100–250× larger than the image generation market — higher compute cost translates to higher revenue per unit generated.^[extracted]

## The Math

The 20× compute intensity differential, combined with video being ~5× more engaging and applicable to more industries, forms the basis for the 100–250× market size prediction. The compute differential alone accounts for roughly 20× of the revenue potential.^[inferred]

## Infrastructure Implications

Higher compute intensity means video generation requires more GPU resources per unit of output, which has implications for:

- Infrastructure costs and pricing models
- The economics of inference hosting platforms (like FAL)
- The barrier to entry for video model providers
- The rate at which video models will commoditize as optimization improves

As video models improve and become cheaper to run, the market size prediction becomes more likely to materialize.^[inferred]
