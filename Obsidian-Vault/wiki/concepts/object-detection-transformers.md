---
title: Object Detection Transformers vs Convolutional Models
category: concepts
tags:
- object-detection
- transformers
- convolutions
- detr
- yolov8
- pre-training
- backbone
- performance
summary: Transformer-based object detectors (like DETR) leverage large-scale pre-training for massive accuracy gains, while convolutional models gain almost nothing — revealing a fundamental architectural d...
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
- target: '[[concepts/rf-detter|RF-DeTter]]'
  type: extends
- target: '[[concepts/dinov2-pre-training|dinov2-pre-training]]'
  type: related_to
- target: '[[concepts/edge-vision-inference|edge-vision-inference]]'
  type: related_to
---

The object detection landscape reveals a stark architectural divide between convolutional models and transformer-based models in how they leverage pre-training.

**Convolutional models** (e.g., YOLOv8) gain almost no performance improvement from large-scale pre-training. On COCO, pre-training on Objects365 (1.6 million images) yields only a 0.2 mAP improvement — essentially negligible.

**Transformer-based models** (e.g., DETR) gain massive improvements from the same pre-training. DETR shows 5-7 mAP improvements across the board when pre-trained on Objects365. This is a gigantic amount in object detection terms.

This mirrors the language domain: transformers learned to leverage big pre-training effectively, while the visual world is "just now catching up." In images, pre-training on 1.6 million images is considered "large pre-training" — a dataset that would be a "tiny challenge dataset" for LLM researchers.

The key insight is that the visual world has not yet replicated what the language world already knew: that transformers can absorb massive pre-training and yield substantial performance gains. Roboflow's [[concepts/rf-detter|RF-DeTter]] model directly addresses this gap by swapping DETR's backbone with DINOv2's pre-trained backbone, achieving meaningful improvements on COCO and massive gains on [[concepts/rf100vl|RF100VL]].
