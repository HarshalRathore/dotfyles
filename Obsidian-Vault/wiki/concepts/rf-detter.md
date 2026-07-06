---
title: RF-DeTter
category: concepts
tags: [rf-detter, object-detection, transformer, dinov2, backbone, real-time, roboflow]
summary: Roboflow's detection transformer model that swaps DETR's backbone with DINOv2's pre-trained backbone for real-time object detection, achieving improvements on COCO and massive gains on RF100VL.
sources:
  - "https://www.youtube.com/watch?v=iqc05ecvnye"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/dinov2-pre-training|dinov2-pre-training]]"
    type: uses
  - target: "[[concepts/object-detection-transformers|object-detection-transformers]]"
    type: implements
  - target: "[[concepts/rf100vl|rf100vl]]"
    type: related_to
---

RF-DeTter is Roboflow's detection transformer model, announced at AIEF2025 as their answer to the question: "why aren't we leveraging big pre-training for visual models?"

The model takes DETR's architecture — one of the top-performing detection transformers — and swaps its backbone with DINOv2's pre-trained backbone. DINOv2 provides rich self-supervised visual features (object masks, body segments, cross-species analogies) that DETR can then use for detection.

Results:
- **COCO**: Decent improvement over DETR baseline, but still second to current SOTA (DETR itself remains SOTA on COCO)
- **RF100VL**: Massive performance gains, demonstrating that DINOv2's features are far more useful for domain-adaptable detection than Objects365 pre-training

RF-DeTter demonstrates that the gap between convolutional and transformer-based detectors is bridgeable through better pre-training backbones. Convolutional models gain almost nothing from pre-training on COCO, while transformer models with DINOv2 backbones show dramatic improvements on harder benchmarks.

The model is designed for real-time object detection and can be fine-tuned on edge devices (YOLOv8 Nano has ~20M parameters at small size).
