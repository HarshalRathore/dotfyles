---
title: "Foundry Local"
category: entities
tags:
  - platform
  - microsoft
  - on-device-ai
  - edge-computing
  - local-inference
  - cross-platform
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Microsoft's end-to-end on-device AI platform combining ONNX Runtime acceleration, Azure AI Foundry model downloads, and a management service for seamless local inference across Windows and macOS."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/azure-ai-foundry|Azure AI Foundry]]"
    type: extends
  - target: "[[entities/onnx-runtime|ONNX Runtime]]"
    type: uses
  - target: "[[entities/microsoft|Microsoft]]"
    type: implements
---

# Foundry Local

**Foundry Local** is Microsoft's end-to-end platform for seamless on-device AI inference, announced at the Microsoft Build conference in May 2025. ^[extracted] It brings together Microsoft's existing AI infrastructure into a unified local-first experience. ^[inferred]

## Architecture

Foundry Local consists of three layers: ^[extracted]

- **ONNX Runtime** at the bottom — accelerates inference across CPU, GPU (CUDA), integrated GPU, and NPU hardware. ^[extracted]
- **Foundry Local Management Service** at the top — hosts and manages models on the client device, connecting to [[entities/azure-ai-foundry|Azure AI Foundry]] to download open-source models on demand. ^[extracted]
- **Developer interfaces** — Foundry Local CLI for exploring and running models, plus an SDK for integrating Foundry Local into custom applications. ^[extracted]

## Platform Integration

On Windows, Foundry Local is integrated into the operating system platform for a simpler developer experience. ^[extracted] It is available on both Windows and macOS: Windows via Winget, macOS via Homebrew. ^[extracted]

## Hardware Partnerships

Microsoft works closely with hardware vendors to integrate their accelerators into Foundry Local: ^[extracted]

- NVIDIA (CUDA GPU acceleration)
- Intel (CPU and integrated GPU)
- AMD (CPU and GPU)
- Qualcomm (NPU acceleration)

Each vendor's hardware has dedicated optimization variants for models. ^[inferred]

## Model Support

Foundry Local supports many popular generative AI models with variants optimized for different hardware (CPU, CUDA, integrated GPU, NPU). ^[extracted] Demonstrated models include Llama C++ and Phi-3.5 (Si-4 mini), with the latter preferred for quality despite slightly lower token throughput. ^[extracted]

## Customer Feedback

Over 100 customers joined the private preview before the official announcement. ^[extracted] Notable customers include:

- **Pieces** (Savu, CEO/co-founder) — reported improvements in memory management, time-to-first-token, and tokens-per-second. Went from documentation to production-ready build "in no time." ^[extracted]
- **7RDGS** — uses Foundry Local for clients requiring on-device processing of sensitive data, combining it with local speech-to-text services. ^[extracted]

## Use Cases

- **Offline-first AI** — applications that must work without network connectivity ^[extracted]
- **Privacy-sensitive processing** — legal documents, patient information, financial data that cannot leave the device ^[extracted]
- **Cross-platform apps** — unified codebase for Windows and macOS with local AI ^[extracted]
- **Internal document summarization** — team ramp-up on sensitive projects where documents cannot be uploaded to cloud AI ^[extracted]

## Related

- [[entities/azure-ai-foundry|Azure AI Foundry]] — cloud platform Foundry Local connects to for model downloads
- [[entities/onnx-runtime|ONNX Runtime]] — inference engine powering Foundry Local's performance
- [[concepts/local-first-ai-platform|Local-First AI Platform]] — architectural principle Foundry Local implements
- [[concepts/on-device-inference|On-Device Inference]] — the paradigm Foundry Local enables

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
