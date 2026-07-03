---
title: "Google Photos Magic Editor: GenAI Under the Hood of a Billion-User App — Kelvin Ma, Google Photos"
tags:
  - reference
  - talk
  - aief2025
  - google
  - computer-vision
  - on-device-ml
  - photo-editing
aliases:
  - AIEF2025 Google Photos Magic Editor
  - Kelvin Ma Google Photos 2025
sources:
  - "AIEF2025 - Google Photos Magic Editor: GenAI Under the Hood of a Billion-User App - Kelvin Ma, Google Photos - https://www.youtube.com/watch?v=C13jiFWNuo8"
summary: "Google Photos editing on on-device ML photo editing evolution (2018-present): U-Net segmentation, Magic Eraser, model evaluation as unit testing, ML iteration vs deadlines."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Google Photos Magic Editor: GenAI Under the Hood of a Billion-User App — Kelvin Ma, Google Photos

> Kelvin Ma, engineer on the [[entities/google-photos|Google Photos]] editing team (Computational Photography Team, est. 2018), presents the evolution of on-device ML-powered photo editing — from a basic editor in 2018 to generative AI features serving 1.5 billion monthly active users and hundreds of millions of edits per month. The talk covers the technical stack (C++ shared inference library, TensorFlow Lite/LiteRT, Edge TPU), key features (post-capture segmentation, portrait light, Magic Eraser, generative editing), and the fundamental tension between ML iteration cycles and hard product deadlines. ^[extracted]

## Context

This talk was given at AI Engineer World's Fair 2025 (AIEF2025). The Google Photos Computational Photography team was founded in 2018 with the thesis of using on-device compute (rather than sensor quality) to deliver professional-grade photo edits. Google's ability to vertically integrate — controlling Pixel hardware with Edge TPU acceleration and maintaining internal computer vision research teams — was a key strategic differentiator. At the time (2018), Hugging Face had just been founded and off-the-shelf models were not yet an option, so Google Photos built everything from the ground up in collaboration with internal researchers. ^[extracted]

## Key Claims

- Google Photos serves 1.5 billion monthly active users and processes **hundreds of millions of edits per month** across Android, iOS, and web clients. ^[extracted]
- The team owns a **shared C++ library** that performs all model inference across all three platforms — all on-device via TensorFlow Lite (now called LiteRT). Model inference is entirely client-side, never cloud. ^[extracted]
- **Post-capture segmentation** (2018): Uses a U-Net convolutional neural network trained specifically for single-portrait, single-subject segmentation. Model was ~10MB — too large to bundle in the APK, requiring post-install download, model management, and IP protection infrastructure. ^[extracted]
- **Magic Eraser** (~2021): A **system of models** — detect distractors, segment them, run an inpainter, then custom GL rendering to animate the mask away and bring in the inpainting area. Models grew to hundreds of megabytes. This is a precursor pattern to what the LLM world now calls "orchestration." ^[extracted]
- **"The beauty of models is it always works"** — models always return a result for any input, which is both a strength (no explicit error handling needed) and a weakness (no confidence calibration, no graceful degradation). ^[extracted]
- **"Benchmarks are the equivalent of unit testing for your model"** — evals must reflect real-world usage or they become useless. Building, maintaining, and running benchmarks takes significant time, analogous to maintaining a test suite in traditional software. ^[extracted]
- **Model iteration is fundamentally slower than software iteration.** On a two-month Pixel launch deadline, the team gets at most two model iterations. Unlike software bugs (find, fix, push), model issues typically require collecting more data and retraining — taking weeks or months, with no guarantee the fix works. ^[extracted]
- **Device variance on Android is extreme**: latest Samsung and Pixel phones are comparable to laptops; older phones are not at all comparable. Consistent latency on a specific device, but huge variance across devices. ^[extracted]
- Models have **unpredictable edge cases**: two visually similar images can produce dramatically different results, and no one can inspect the model to find the "bug." The response is always "collect more data, train a new version, we'll let you know in a few weeks." ^[extracted]

## Architecture

- **Three client platforms**: Android (Kotlin), iOS (Swift), Web (JavaScript) — all natural to each platform. ^[extracted]
- **Shared C++ inference library**: Owned by the editing team, integrated across all clients, runs all model inference on-device. ^[extracted]
- **Runtime**: TensorFlow Lite (now LiteRT) for on-device inference. ^[extracted]
- **Hardware acceleration**: Edge TPU on Pixel devices for accelerated compute. ^[extracted]
- **Research partnership**: Works with Google Research / [[entities/google-deepmind|Google DeepMind]] computer vision researchers in a tight iteration loop — "hey, can you iterate on the model? We'll iterate on the application." ^[extracted]

## Feature Evolution Timeline

| Year | Feature | ML Approach | Key Challenge |
|------|---------|-------------|---------------|
| 2018 | Post-capture segmentation (portrait bokeh) | U-Net CNN, ~10MB | Model too large for APK, post-install download |
| 2019 | Portrait light (relighting) | Image-to-image model | Shadow/hair edge quality |
| 2021 | Magic Eraser | System of models: detection + segmentation + inpainting + GL rendering | Hundreds of MBs on-device, visible failure cases |
| 2023+ | Generative AI editing (Magic Editor) | Diffusion models on-device | Larger models, latency, quality gates |

## Notable Quotes

- "The beauty of models is it always works. You give it any input, it'll run, and it's like, here's the output."
- "Benchmarks are the equivalent of unit testing for your model. And you need to maintain it, and it takes time."
- "No one can look at the system, go, 'Oh, there's the bug. Let me fix it. Let me push the fix.' That's totally different from software engineering."
- "Hey, tell me when you're not sure so I can do something else. And the LLM would be like, what do you mean? I'm always sure."

## Companies / Projects Mentioned

- [[entities/google-photos|Google Photos]] — host product, 1.5B MAU
- [[entities/google-deepmind|Google DeepMind]] — research partner for CV/ML
- **Pixel** — Google's smartphone hardware, Edge TPU acceleration
- **TensorFlow Lite / LiteRT** — on-device inference runtime
- **Hugging Face** — mentioned as just-founded in 2018, not yet usable for off-the-shelf models

## Related

- [[entities/kelvin-ma|Kelvin Ma]] — speaker, engineer on Google Photos editing team
- [[concepts/on-device-ml-computational-photography|On-Device ML for Computational Photography]] — the paradigm
- [[concepts/model-as-unit-test-paradigm|Model-as-Unit-Test Paradigm]] — benchmarks as unit tests for models
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — the operational cycle that determines product quality
- [[concepts/agent-design-patterns|Agent Design Patterns]] — system-of-models orchestration prefigured by Magic Eraser's multi-model pipeline
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini]] — another Google/DeepMind talk from AIEF2025

## Open Questions

- How does Google Photos handle the transition from per-feature models (one model per edit type) to unified generative models for all editing tasks?
- What metrics do they use to gate model quality before shipping to 1.5B users?
- How does on-device diffusion model latency compare to the earlier U-Net and inpainting models?

## Sources

- <https://www.youtube.com/watch?v=C13jiFWNuo8>
