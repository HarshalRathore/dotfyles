---
title: Vision AI in 2025 — Peter Robicheaux, Roboflow
category: references
tags: [aief2025, computer-vision, vision-language-models, evaluation, pre-training, dino, clip, benchmark]
summary: Peter Robicheaux (ML Lead, Roboflow) argues vision models are not smart, evals are saturated, CLIP fails on visual fidelity, and introduces RF100VL benchmark and RF-DeTter model.
sources:
  - "[[sources/watchv=iqc05ecvnye]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-language-models|vision-language-models]]"
    type: related_to
  - target: "[[entities/peter-robicheaux|peter-robicheaux]]"
    type: related_to
  - target: "[[entities/roboflow|roboflow]]"
    type: related_to
---

## TLDR

Peter Robicheaux, ML Lead at Roboflow, presents a critical analysis of computer vision in 2025. His core thesis: vision models are not smart compared to language models. Vision evals (ImageNet, COCO) are saturated because they measure pattern matching, not visual intelligence. CLIP-style vision-language pre-training fails to capture fine-grained visual distinctions. He introduces [[concepts/rf100vl|RF100VL]], a new benchmark for visual intelligence, and [[concepts/rf-detter|RF-DeTter]], a detection transformer using DINOv2 backbones.

## Problem / Motivation

The built world is structured around vision as a fundamental primitive, yet there is a "big gap between where human vision is and where computer vision is" — arguably bigger than the gap between human and computer speech. Computer vision has distinct problems: latency matters (multiple frames per second for motion perception), and edge deployment is necessary (centralized hubs introduce too much latency).

## Method / Architecture

Robicheaux's argument is structured around three pillars:

1. **Vision evals are saturated**: ImageNet and COCO are pattern-matching benchmarks that don't require visual intelligence, removing the incentive for large-scale pre-training.
2. **CLIP fails on visual fidelity**: Caption-based contrastive learning cannot distinguish images that share captions but differ in visual detail.
3. **Transformers vs convolutions in detection**: Transformer-based detectors (DETR) gain 5-7 mAP from pre-training while convolutional models (YOLO) gain 0.2 mAP — the visual world is catching up to what language already knew.

## Key Equations

N/A — this is a survey/analysis talk, not a technical paper with formal equations.

## Results

- **MMVP dataset**: GPT-4o fails basic visual tasks (school bus direction, clock reading) and hallucinates to support wrong answers.
- **CLIP vs DINOv2**: CLIP cannot discriminate image pairs that DINOv2 clearly distinguishes, proving CLIP's loss function is not discriminative enough.
- **DETR pre-training gains**: 5-7 mAP improvement on COCO from Objects365 pre-training vs 0.2 mAP for YOLOv8.
- **RF-DeTter**: DINOv2-backed DETR achieves decent COCO improvement and massive RF100VL gains.
- **RF100VL**: YOLOv8 (10-shot) outperforms Qwen2.5-VL-72B. Zero-shot Grounding DINO gets ~19 mAP; fine-tuned with federated loss achieves highest known performance.
- **COCO is too easy**: Contains common classes (humans, coffee cups); optimization focuses on bounding box precision, not visual intelligence.

## Limitations

- RF100VL is new and its validity as a "better measure of intelligence" is asserted but not yet validated by the community.
- The claim that "vision models aren't smart" is a broad generalization — some vision domains (image generation, video understanding) may differ.
- Pre-training scale comparison (1.6M images for vision vs internet-scale for language) may not be a fair comparison given different task structures.

## Related

- [[concepts/vision-evals-saturation]]
- [[concepts/clip-limitations]]
- [[concepts/dinov2-pre-training]]
- [[concepts/object-detection-transformers]]
- [[concepts/rf-detter]]
- [[concepts/rf100vl]]
- [[concepts/mmvp-dataset]]
- [[concepts/vlm-visual-fidelity]]
- [[concepts/edge-vision-inference]]
- [[concepts/grounding-dino]]

## Sources

- AIEF2025 - Vision AI in 2025 — Peter Robicheaux, Roboflow - https://www.youtube.com/watch?v=IQc05eCvNYE
