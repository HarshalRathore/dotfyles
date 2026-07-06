---
title: CLIP Limitations in Vision-Language Pre-training
category: concepts
tags:
- clip
- vision-language
- pre-training
- contrastive-learning
- visual-fidelity
- multimodal
summary: CLIP's contrastive pre-training fails to capture fine-grained visual distinctions because its caption-based loss function cannot distinguish images that share the same caption but differ in visual...
sources:
- 'https://www.youtube.com/watch?v=iqc05ecvnye'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/dinov2-pre-training|dinov2-pre-training]]'
  type: contradicts
- target: '[[concepts/vision-language-models|vision-language-models]]'
  type: related_to
- target: '[[concepts/mmvp-dataset|mmvp-dataset]]'
  type: related_to
---

CLIP is a vision-language model trained through contrastive learning on internet-scale captioned image datasets. The training process scrambles captions and images, asking the model to pair each image with its correct caption. This works well at a coarse level but fails to capture fine-grained visual distinctions.

The core limitation emerges from the caption-based loss function. If two images share the same caption, the loss function cannot distinguish them — and therefore the model cannot learn to distinguish them either. For example, two images of a dog in different poses (one facing the camera, one facing away) might share the same caption. The peculiar pose difference is not encoded in the caption, so CLIP treats these images as nearly identical in its embedding space.

This was demonstrated through the MMVP dataset, which specifically finds pairs of images that are close in CLIP space but far apart in DINOv2 space. According to CLIP, these images "basically look the same." This points to a fundamental failure in vision-language pre-training: the textual modality loses discriminative visual information.

The implication is that vision-language models built on CLIP-style pre-training inherit this lack of visual fidelity. They may be intelligent in the linguistic domain but "absolutely hopeless when it comes to generalizing in the visual domain." This explains why models like GPT-4o can hallucinate when asked to read a clock or determine which direction a school bus is facing.

[[concepts/dinov2-pre-training|DINOv2]] represents an alternative approach: self-supervised vision-only pre-training that discovers rich visual features (object masks, body segments, analogous features across species) without relying on captions.
