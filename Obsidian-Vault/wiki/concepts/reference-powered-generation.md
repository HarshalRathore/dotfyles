---
title: Reference-Powered Generation
category: concepts
tags:
- reference
- image-conditioning
- video-generation
- style-transfer
aliases:
- Reference-Based Generation
- Reference-Powered Video
sources:
- AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI
summary: A generation technique where a reference image (or set of images) conditions the output — enabling composition of subjects into environments, style transfer, and character identity preservation acr...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/style-preservation|Style Preservation]]'
  type: extends
- target: '[[entities/veo-2|Veo 2]]'
  type: related_to
---

# Reference-Powered Generation

Reference-powered generation is a technique where one or more reference images condition the output of a generative model. The reference image(s) guide the model's output in terms of subject identity, style, composition, or environment.

## Use Cases

### Subject-Environment Composition
Place a subject (person, object, character) from a reference image into a different environment or scene, composited in a way that feels natural and stylized. ^[extracted]

### Style Transfer
Upload a reference image and have the model apply its visual style to a different subject or scene. ^[extracted]

### Character Identity Preservation
Use a reference image of a character to maintain their identity across multiple generated frames or scenes. ^[extracted]

## Benchmark Performance

In side-by-side comparisons, most human evaluators preferred Veo 2's reference-powered videos over competitors (Runway Gen4, Kling), particularly for reference-powered video tasks. ^[extracted]

## Availability

Reference-powered generation is available via API and tools like Flow for Veo 2. ^[extracted]

## Related

- [[concepts/style-preservation|Style Preservation]] — Sub-domain focused on style transfer
- [[entities/veo-2|Veo 2]] — Model with reference-powered features
- [[concepts/visual-consistency|Visual Consistency]] — Related coherence challenge
