---
title: RF100VL Benchmark
category: concepts
tags:
- rf100vl
- benchmark
- object-detection
- vision-language
- few-shot
- domain-adaptability
- roboflow
summary: A vision-language benchmark of 100 object detection datasets from diverse domains (medical imaging, aerial views, microscopy) designed to measure visual intelligence and domain adaptability beyond...
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
- target: '[[concepts/vision-evals-saturation|vision-evals-saturation]]'
  type: derived_from
- target: '[[concepts/vision-language-models|vision-language-models]]'
  type: extends
- target: '[[entities/roboflow|roboflow]]'
  type: related_to
---

RF100VL is a vision-language benchmark created by Roboflow to measure the domain adaptability and visual intelligence of object detection models. It was introduced at AIEF2025 as a response to COCO's saturation — COCO is "too easily solvable" with common classes like humans and coffee cups.

**Composition**: 100 object detection datasets hand-curated from Roboflow Universe (~750,000 datasets), sorted by community engagement and selected for difficult domains. Includes:
- **Aerial camera positioning** — requires understanding objects from non-standard viewpoints
- **Microscopes and X-rays** — different imaging modalities
- **Specialized vocabulary** — e.g., "block" meaning a volleyball block (not a construction block), "thunderbolt defect" in cable inspection

**Vision-language component**: Classes require contextualizing word embeddings within domain context. Detecting "thunderbolts" as cable defects requires knowing the domain; a naive visual model finds nothing.

**Few-shot track**: Canonical 10-shot splits providing class name, annotator instructions, and 10 visual examples per class. No existing model can leverage all three inputs better than any single one alone — this is identified as a major shortcoming of current VLMs.

**Key finding**: A YOLOv8 model trained on just 10 examples per class outperforms Qwen2.5-VL-72B (a state-of-the-art 72-billion-parameter visual language model). This demonstrates that VLMs are excellent at linguistic generalization but "absolutely hopeless when it comes to visual domain generalization."

**Resources**: Available at RF100VL.org with archive paper and code utilities. Also on Hugging Face.
