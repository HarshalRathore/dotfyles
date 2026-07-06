---
title: MMVP Dataset — Measuring LLM Vision Inability
category: concepts
tags:
- mmvp
- benchmark
- multimodal
- llm-visual-failure
- visual-perception
- hallucination
summary: MMVP is a dataset designed to measure the inability of large language models to perform basic visual tasks, revealing that even GPT-4o hallucinates on simple visual questions like determining schoo...
sources:
- 'https://www.youtube.com/watch?v=iqc05ecvnye'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/clip-limitations|clip-limitations]]'
  type: related_to
- target: '[[concepts/vision-language-models|vision-language-models]]'
  type: related_to
- target: '[[concepts/vision-evals-saturation|vision-evals-saturation]]'
  type: related_to
---

MMVP (Multimodal Visual Perception) is a dataset designed to measure the inability of large language models to perceive visual information. It demonstrates that even the most intelligent models we have — like GPT-4o — "cannot see" due to a lack of visual features they can perceive with.

**Key examples**:
- **School bus direction**: When shown an image and asked whether it's the front or back of a school bus, GPT-4.0 gets it completely wrong and then hallucinates details to support its incorrect claim.
- **Clock reading**: GPT-3.5 and GPT-4o both fail to read a watch face, guessing random times. Even the stock time of 10:10 (the default on virtually all watch images) is not correctly identified.

**Dataset construction**: MMVP finds pairs of images that are close in CLIP space but far in DINOv2 space. This means CLIP — the vision-language model trained on internet-scale captioned data — cannot discriminate between these images, while DINOv2 — a pure self-supervised vision model — can.

**Implication**: This is evidence that vision-language pre-training (CLIP-style) is insufficient for visual discrimination. The loss function based on captions cannot distinguish images that differ only in visual detail not captured by text. The models have "a good conceptual abstract idea" of what objects are but are "hopeless" at identifying their visual properties (location, orientation, specific details).

MMVP directly demonstrates the [[concepts/clip-limitations|CLIP limitations]] and motivates the need for better visual feature extraction via self-supervised pre-training like [[concepts/dinov2-pre-training|DINOv2]].
