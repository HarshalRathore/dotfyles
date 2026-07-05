---
title: "Local Model Management"
category: concepts
tags:
  - model-lifecycle
  - on-device-ai
  - model-catalog
  - edge-computing
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "The practice of managing AI model discovery, download, caching, and execution on end-user devices — including model catalog browsing, hardware-specific variant selection, and local model storage."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/on-device-inference|On-Device Inference]]"
    type: supports
  - target: "[[concepts/local-vs-deploy-experience-gap|Local vs Deploy Experience Gap]]"
    type: addresses
---

# Local Model Management

**Local model management** encompasses the discovery, download, caching, versioning, and execution of AI models on end-user devices. It is the operational layer that makes on-device AI practical for developers and end users. ^[extracted]

## Model Discovery

Developers need to browse available models and their hardware-optimized variants before committing to one for their application. ^[extracted] Foundry Local's CLI provides `foundry model list` to enumerate supported models with their available variants (CPU, CUDA, integrated GPU, NPU). ^[extracted]

## Model Download

Models are downloaded from cloud model registries (e.g., [[entities/azure-ai-foundry|Azure AI Foundry]]) on first use, then cached locally for subsequent runs. ^[extracted] The download requires internet connectivity but is a one-time per-model cost. ^[inferred]

## Model Caching

Installed models are tracked locally. Foundry Local's `foundry cache list` shows all downloaded models on the device. ^[extracted] Cached models load quickly since they skip the download phase. ^[extracted]

## Model Selection and Experimentation

The local model management workflow supports iterative experimentation: ^[extracted]

1. List available models and variants
2. Run models interactively (`foundry model run`) to test quality
3. Compare performance with verbose mode (token throughput metrics)
4. Select the best model for the application based on quality/performance tradeoffs
5. Integrate the chosen model ID into the application

## CLI Interface

The CLI is the primary developer interface for local model management: ^[extracted]

- `foundry model list` — discover available models
- `foundry cache list` — view downloaded models
- `foundry model run <model>` — run a model interactively
- `foundry model run <model> --verbose` — run with performance metrics

## Related

- [[concepts/on-device-inference|On-Device Inference]] — the paradigm local model management enables
- [[entities/foundry-local|Foundry Local]] — the platform providing local model management
- [[concepts/local-vs-deploy-experience-gap|Local vs Deploy Experience Gap]] — the gap local model management helps close

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
