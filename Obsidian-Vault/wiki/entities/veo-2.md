---
title: Veo 2
category: entities
tags:
- model
- video-generation
- google-deepmind
- creative-control
aliases:
- Veo2
sources:
- AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI
summary: 'Google DeepMind''s video generation model with extensive creative control features: reference-powered videos, outpainting, add/remove objects, character control, first-to-last frame interpolation, a...'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/google-deepmind|Google DeepMind]]'
  type: related_to
- target: '[[entities/veo-3|Veo 3]]'
  type: replaces
- target: '[[concepts/reference-powered-generation|Reference-Powered Generation]]'
  type: implements
- target: '[[concepts/outpainting|Outpainting]]'
  type: implements
---

# Veo 2

Veo 2 is Google DeepMind's video generation model that introduced extensive **creative control** features. Released approximately one month before AIEF2025, it made these capabilities available via API and tools like Flow.

## Creative Control Features

### Reference-Powered Videos
Users can compose a person, environment, or style from a reference image into a generated video. The model preserves stylized composition while maintaining quality. Most human evaluators preferred Veo 2's reference-powered videos over competitors (Runway Gen4, Kling) in side-by-side comparisons. ^[extracted]

### Outpainting
Extend a scene or frame beyond its original boundaries, generating consistent content that matches the original view. Used for a project involving the sphere around Wizard of Oz. ^[extracted]

### Add/Remove Objects
Add or remove objects from video scenes while maintaining visual consistency across the frame. ^[extracted]

### Character Control & Consistency
Control character mouth movements, reference-space movements, and lip-sync to audio scripts. Characters can be given a voice tone and map their lips to produce sound consistent with the scene location. ^[extracted]

### First-to-Last Frame Interpolation
Provide an input image and output image, and Veo 2 interpolates between them to create a seamless video transition. ^[extracted]

### Camera Control
Precise camera movement control via natural language: move back, move right, rotate up, zoom in — giving filmmakers granular control over shot composition. ^[extracted]

### Style Preservation
Upload a reference image and have the model compose different styles together while preserving the original style. ^[extracted]

### Motion Control
Control and change design elements across a scene from an input image. ^[extracted]

## Benchmark Performance

Veo 2 outperformed competitors (Runway Gen4, Kling) on reference-powered video benchmarks, with most human readers selecting Veo 2 for side-by-side comparisons. ^[extracted]

## Related

- [[entities/veo-3|Veo 3]] — Successor with native audio-video composition
- [[entities/google-deepmind|Google DeepMind]] — Developer
- [[concepts/reference-powered-generation|Reference-Powered Generation]] — Core capability
- [[concepts/character-consistency|Character Consistency]] — Key challenge addressed
