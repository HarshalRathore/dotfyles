---
title: Grounding DINO
category: concepts
tags:
- grounding-dino
- object-detection
- zero-shot
- vision-language
- federated-loss
- open-vocabulary
summary: A zero-shot object detection model that can detect objects given natural language class names. Benchmarked on RF100VL where zero-shot achieves ~19 mAP and fine-tuning with federated loss achieves t...
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
- target: '[[concepts/vlm-visual-fidelity|vlm-visual-fidelity]]'
  type: related_to
- target: '[[concepts/rf100vl|rf100vl]]'
  type: related_to
- target: '[[concepts/object-detection-transformers|object-detection-transformers]]'
  type: related_to
---

Grounding DINO is a zero-shot object detection model capable of detecting objects described by natural language class names — not just predefined categories. This makes it an open-vocabulary detector.

Benchmarked on [[concepts/rf100vl|RF100VL]] at AIEF2025:
- **Zero-shot Grounding DINO**: ~19 mAP average — described as "kind of good, kind of bad"
- **Fine-tuned Grounding DINO with federated loss**: Highest performing model on the dataset
- **YOLOv8 Nano from scratch (10-shot)**: ~25 mAP — notably, being worse than fine-tuned Grounding DINO is described as "sort of bad"

The comparison is significant: a specialized model fine-tuned on a tiny amount of data (10 examples per class) can match or exceed zero-shot capabilities of a more sophisticated architecture. This underscores the gap between linguistic generalization and visual detection in current VLMs.

Grounding DINO represents one approach to the visual fidelity problem — using language as a bridge to detect novel objects. However, even its fine-tuned performance on RF100VL is modest, suggesting that the visual grounding problem remains unsolved.
