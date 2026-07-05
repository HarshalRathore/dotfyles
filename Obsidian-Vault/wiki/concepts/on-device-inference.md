---
title: "On-Device Inference"
category: concepts
tags:
  - inference
  - edge-computing
  - local-ai
  - hardware-acceleration
  - cross-platform
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Running AI model inference directly on end-user devices (laptops, desktops, phones) using local hardware accelerators (GPU, NPU, CPU) rather than cloud data centers, enabling offline operation, privacy, and low latency."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/local-first-ai-platform|Local-First AI Platform]]"
    type: implements
  - target: "[[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]]"
    type: requires
  - target: "[[concepts/cost-efficiency-in-ai|Cost Efficiency in AI]]"
    type: enables
---

# On-Device Inference

**On-device inference** is the practice of running AI model inference directly on end-user devices — laptops, desktops, phones — using local hardware accelerators (GPU, NPU, CPU) rather than sending requests to cloud data centers. ^[extracted]

## Why It's Viable Now

Two converging trends make on-device inference practical in 2025: ^[extracted]

1. **Hardware advancement** — Modern devices are equipped with powerful GPUs, NPUs, and CPUs capable of running advanced AI models
2. **Model optimization** — Model companies are publishing leaner, faster models optimized for local inference (e.g., Phi-3.5, DeepSeek small variants), alongside advanced runtime-level optimization techniques

## Key Drivers

Four reasons organizations choose on-device inference over cloud: ^[extracted]

1. **Offline/low-bandwidth operation** — No dependency on network connectivity; works in conferences, industrial sites, tunnels, and other connectivity-constrained environments
2. **Privacy and security** — Sensitive data (legal documents, patient records, financial information) never leaves the device
3. **Cost efficiency** — At scale (millions of devices, hundreds of millions of inference calls), local inference eliminates per-request cloud API costs
4. **Real-time latency** — Zero network round-trip time; models respond immediately, critical for interactive applications

## Hardware Acceleration Spectrum

On-device inference leverages multiple hardware types: ^[extracted]

- **CPU** — universal but slower; baseline support for all models
- **GPU (CUDA)** — high throughput for larger models; NVIDIA acceleration
- **Integrated GPU** — shared GPU on laptops; balanced performance/power
- **NPU (Neural Processing Unit)** — energy-efficient dedicated AI silicon; emerging on modern laptops (Qualcomm, Apple)

Each hardware type may have dedicated model variants optimized for it. ^[inferred]
## Robotics Edge Deployment

On-device inference in robotics has unique constraints beyond consumer AI: ^[extracted]

+ **NVIDIA AGX modules** — The edge hardware where [[entities/nvidia-gr00t|GR00T N1]] and other foundation models run on physical robots
+ **Deterministic latency** — Robot control loops require predictable inference timing (e.g., 120 Hz for [[concepts/system-one-system-two-robotics|System One]]), not just low average latency
+ **Power-limited operation** — Battery-operated robots need extreme power efficiency
+ **Environmental robustness** — Must operate in industrial settings with vibration, temperature extremes, and dust

This makes the edge stage of the [[concepts/three-computer-problem|Three-Computer Problem]] distinct from consumer on-device inference: the model must be small enough, fast enough, and efficient enough to run on an edge device attached to a physical robot that operates in the real world. ^[extracted]

## Tooling Ecosystem

Key tools enabling on-device inference: ^[extracted]

- [[entities/onnx-runtime|ONNX Runtime]] — cross-platform inference engine with hardware acceleration
- [[entities/olive-optimizer|Olive]] — model optimization and preparation for target hardware
- [[entities/foundry-local|Foundry Local]] — end-to-end platform managing model lifecycle on-device

## Related

- [[concepts/local-first-ai-platform|Local-First AI Platform]] — architectural principle for local execution
- [[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]] — the hardware layer enabling on-device inference
- [[concepts/cost-efficiency-in-ai|Cost Efficiency in AI]] — economic driver for on-device inference
- [[entities/onnx-runtime|ONNX Runtime]] — primary inference engine for on-device AI

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
