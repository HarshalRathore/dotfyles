---
title: SAM2
category: entities
tags: [ai-model, computer-vision, segmentation, video-segmentation, meta, segment-anything]
summary: "Meta's Segment Anything Model 2 — an automated segmentation model for images and video. Used to generate annotations that dramatically improve video understanding model accuracy."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/meta]]"
    type: implements
  - target: "[[concepts/annotation-augmented-video-understanding]]"
    type: related_to
  - target: "[[concepts/multimodal-video-search]]"
    type: related_to
---

**SAM2** (Segment Anything Model 2) is Meta's automated segmentation model for images and video. It extends the original SAM (Segment Anything Model) with video segmentation capabilities.

## Use in Video Understanding

**[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** demonstrated SAM2's role in **annotation-augmented video understanding**:

- SAM2 can detect and segment objects in video frames
- It can generate spatial annotations (boundaries, masks, regions of interest)
- These annotations are overlaid on frames before passing them to video understanding models
- The result: dramatically improved accuracy for questions about spatial relationships in video

The key insight: SAM2 does the segmentation work, and the video understanding model does the reasoning — each doing what it's good at. ^[inferred]

## Capabilities

- **Image segmentation** — Segment objects in still images
- **Video segmentation** — Track and segment objects across video frames
- **Promptable segmentation** — Accept text, point, or box prompts to guide segmentation
- **Automated annotation generation** — Generate spatial annotations without manual labeling

## Impact on Video Understanding

Adding SAM2-generated annotations to video frames can dramatically improve the accuracy of downstream video understanding models, even with "a tiny bit of annotation." Static camera angles with annotated court lines, for example, enable models to answer spatial questions ("did the player cross the three-pointer line?") with far better accuracy than on raw video. ^[extracted]

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
