---
title: AI Product Fit
category: concepts
tags:
- concept
- ai-integration
- product-design
- aief2025
- excalidraw
- ai-product-fit
summary: The principle that just because an AI model exists and works doesn't mean it should be integrated into a product. Product fit requires alignment with actual user behavior, not just technical capabi...
sources:
- 'AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/ai-integration-patterns]]'
  type: related_to
- target: '[[entities/file-ai]]'
  type: related_to
---

# AI Product Fit

**AI product fit** is the principle that just because an AI model exists and works well doesn't mean it should be integrated into a product. A successful AI integration requires alignment between the model's capabilities and actual user behavior — not just technical feasibility.

## The Lesson

[[entities/christopher-chedeau|christopher-chedeau]] articulated this lesson at AIEF2025 after his team experimented with AI integrations for [[entities/excalidraw|excalidraw]]. The cautionary example was a model built by [[entities/file-ai|file-ai]] that could transform Excalidraw diagrams with natural elements (palm trees, sun) into photorealistic beach scenes. The model worked well — Chedeau called it "mind-blowing" — but people don't draw realistic images on Excalidraw. They draw diagrams.

The key insight: there is significant pressure on product teams to add AI to everything ("be AI first"), but the better question is *which AI integrations actually make sense for this product?* Adding AI that doesn't fit the product degrades the overall experience compared to not having AI at all.

## Criteria for AI Product Fit

From Chedeau's experiments, the following criteria emerge:

1. **Alignment with actual user behavior**: What do users actually do with the product, not what they might do in a demo?
2. **Quality threshold**: If the AI output is worse than the current experience, don't ship it.
3. **Novel capability**: Does the AI enable something genuinely new, or is it just re-implementing existing functionality?

## Broader Implication

This principle challenges the "AI everywhere" approach. Not every product needs AI, and not every AI model deserves a product integration. The bar should be: does this AI integration make the product better, or is it just AI for AI's sake?^{[inferred]}
