---
title: "AIEF2025 - Foundry Local: Cutting-Edge AI on Device with ONNX Runtime/Olive"
category: references
tags:
  - talk
  - microsoft
  - onnx-runtime
  - olive
  - foundry-local
  - edge-ai
  - aief2025
sources:
  - "https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Emma Ning (Microsoft PM) presents Foundry Local, Microsoft's end-to-end on-device AI platform combining ONNX Runtime, Azure AI Foundry model downloads, and hardware-accelerated inference across CPU/GPU/NPU."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/emma-ning|Emma Ning]]"
    type: presents_by
  - target: "[[entities/foundry-local|Foundry Local]]"
    type: describes
  - target: "[[entities/onnx-runtime|ONNX Runtime]]"
    type: describes
---

# AIEF2025 - Foundry Local: Cutting-Edge AI on Device with ONNX Runtime/Olive

**Speaker:** Emma Ning, Product Manager, Microsoft ^[extracted]
**Event:** AI Engineer World's Fair 2025 ^[extracted]
**Video:** https://www.youtube.com/watch?v=l614N5W60ls

## TL;DR

Emma Ning presents [[entities/foundry-local|Foundry Local]], Microsoft's end-to-end platform for building cross-platform applications powered by local (on-device) AI. The talk covers why local AI matters (offline, privacy, cost, latency), the hardware ecosystem enabling it (GPU/NPU/CPU), and a live demo of model management, inference, and a document summarization app — all running entirely on-device. ^[extracted]

## Problem / Motivation

Four reasons local AI is essential, per customer conversations: ^[extracted]

1. **Offline/low-bandwidth** — Cloud AI fails when Wi-Fi is unreliable; local AI has zero dependency on network
2. **Privacy & security** — Sensitive data (legal, medical, financial) must stay on-device
3. **Cost efficiency** — At millions of devices and hundreds of millions of daily inference calls, local inference eliminates cloud API costs
4. **Real-time latency** — Interactive applications need zero network round-trip time

## Architecture

Foundry Local is a three-layer platform: ^[extracted]

- **Bottom:** ONNX Runtime — cross-platform inference acceleration across CPU, GPU, integrated GPU, NPU
- **Top:** Foundry Local Management Service — hosts/manages models on-device, connects to Azure AI Foundry for model downloads
- **Developer interfaces:** Foundry Local CLI + SDK for integrating into applications

Available on Windows (platform-integrated) and macOS. ^[extracted]

## Hardware Ecosystem

Microsoft collaborates with NVIDIA, Intel, AMD, and Qualcomm to integrate their hardware accelerators into Foundry Local, ensuring best-in-class performance on each silicon. ^[extracted]

## Customer Testimonials

- **Pieces** (Savu, CEO) — improved memory management, time-to-first-token, and tokens-per-second; production-ready "in no time" ^[extracted]
- **7RDGS** — uses Foundry Local for privacy-sensitive clients; impressed by installation simplicity and hybrid local/cloud architecture ^[extracted]

## Live Demo Highlights

- `foundry model list` — shows models with hardware-optimized variants (CPU, CUDA, integrated GPU, NPU) ^[extracted]
- `foundry cache list` — shows pre-installed models ^[extracted]
- `foundry model run` — interactive model inference, ~90 tokens/sec with verbose mode ^[extracted]
- Phi-3.5 (Si-4 mini) vs Llama — tradeoff: smaller models faster but lower quality; larger models slower but more detailed ^[extracted]
- Document summarization app — cross-platform (Windows + macOS), processes local files with selected model ^[extracted]

## Key Quotes

> "Offline-first AI is core to this vision." — Savu, Pieces ^[extracted]

> "One aspect we were really impressed by was the simplicity of the installation and the ease of using the models." — 7RDGS ^[extracted]

## Related Pages

- [[entities/foundry-local|Foundry Local]]
- [[entities/emma-ning|Emma Ning]]
- [[entities/onnx-runtime|ONNX Runtime]]
- [[entities/olive-optimizer|Olive]]
- [[entities/pieces|Pieces]]
- [[entities/7rdgs|7RDGS]]
- [[concepts/on-device-inference|On-Device Inference]]
- [[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]]
- [[concepts/local-model-management|Local Model Management]]

## Sources

- https://www.youtube.com/watch?v=l614N5W60ls
