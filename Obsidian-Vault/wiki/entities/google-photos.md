---
title: "Google Photos"
tags:
  - entity
  - company
  - google
  - photo-editing
  - on-device-ml
aliases:
  - Google Photos app
  - Google Photos editing
  - Google Photos ML
relationships:
  - target: "[[entities/google-deepmind]]"
    type: related_to
  - target: "[[entities/kelvin-ma]]"
    type: related_to
sources:
  - "AIEF2025 - Google Photos Magic Editor: GenAI Under the Hood of a Billion-User App - Kelvin Ma, Google Photos - https://www.youtube.com/watch?v=C13jiFWNuo8"
summary: "Google's photo platform with 1.5B MAU and hundreds of millions of monthly edits. Hosts the Computational Photography Team pioneering on-device ML photo editing."
provenance:
  extracted: 0.65
  inferred: 0.25
  ambiguous: 0.10
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Google Photos

Google's photo storage and editing platform serving 1.5 billion monthly active users and processing hundreds of millions of edits per month across Android, iOS, and web clients. ^[extracted] The product was designed from launch with machine learning at its core — auto-backup, ML-powered search (OCR for receipts, scene recognition), automatic album creation, and on-device photo editing. ^[extracted]

## Computational Photography Team

Founded in 2018, the Computational Photography Team (the "editing team") pioneered the paradigm of using on-device ML compute rather than sensor quality to deliver professional-grade photo edits. The team owns a shared C++ inference library integrated across all client platforms, running models via TensorFlow Lite (LiteRT) with Edge TPU acceleration on Pixel devices. ^[extracted]

## ML Editing Feature Evolution

| Feature | Year | ML Technology |
|---------|------|---------------|
| Post-capture segmentation (portrait bokeh) | 2018 | U-Net CNN (~10MB, on-device) |
| Portrait light (relighting) | ~2019 | Image-to-image model |
| Magic Eraser | ~2021 | System of models: detection + segmentation + inpainting + GL rendering (100s MB) |
| Magic Editor (generative AI editing) | 2023+ | On-device diffusion models |

## Technical Stack

- **Clients**: Android (Kotlin), iOS (Swift), Web (JavaScript)
- **Inference**: Shared C++ library across all platforms, TensorFlow Lite / LiteRT runtime
- **Hardware**: Edge TPU on Pixel devices for accelerated inference
- **Research**: Tight collaboration with Google Research / [[entities/google-deepmind|Google DeepMind]] CV researchers

## Related

- [[entities/kelvin-ma]] — engineer on the editing team, speaker at AIEF2025
- [[concepts/on-device-ml-computational-photography]] — the paradigm pioneered by this team
- [[concepts/model-as-unit-test-paradigm]] — the evaluation methodology for shipping model updates at scale
- [[entities/google-deepmind]] — research partner
- [[references/aief2025-google-photos-magic-editor-kelvin-ma]] — source talk on the technical architecture

## Sources

- [[references/aief2025-google-photos-magic-editor-kelvin-ma]]
