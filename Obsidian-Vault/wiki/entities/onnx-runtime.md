---
title: "ONNX Runtime"
category: entities
tags:
  - inference-engine
  - microsoft
  - onnx
  - cross-platform
  - performance
  - local-inference
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Microsoft's cross-platform, high-performance on-device AI inference engine with 10M+ monthly downloads, delivering significant acceleration over PyTorch across CPU, GPU, and NPU hardware."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/microsoft|Microsoft]]"
    type: implements
  - target: "[[entities/foundry-local|Foundry Local]]"
    type: powers
  - target: "[[entities/pytorch|PyTorch]]"
    type: outperforms
---

# ONNX Runtime

**ONNX Runtime** is Microsoft's cross-platform, high-performance inference engine for on-device AI models. ^[extracted] It is the foundational performance layer used by [[entities/foundry-local|Foundry Local]] and other Microsoft AI products. ^[inferred]

## Scale and Adoption

- Over 10 million downloads per month. ^[extracted]
- Customers report significant performance acceleration compared to PyTorch. ^[extracted]

## Hardware Support

ONNX Runtime accelerates models across diverse silicon: ^[extracted]

- **CPU** — general-purpose inference
- **GPU (CUDA)** — NVIDIA GPU acceleration
- **Integrated GPU** — shared GPU on laptops and thin clients
- **NPU** — neural processing units for energy-efficient inference

This broad hardware coverage is achieved through close partnerships with hardware vendors (NVIDIA, Intel, AMD, Qualcomm) who integrate their accelerators into ONNX Runtime's execution providers. ^[inferred]

## Role in Microsoft's AI Stack

ONNX Runtime serves as the inference backbone for:

- [[entities/foundry-local|Foundry Local]] — the on-device AI platform
- Azure AI Foundry's cloud-to-edge deployment path
- Various Microsoft consumer and enterprise AI experiences

## Format

ONNX (Open Neural Network Exchange) is an open format for representing machine learning models, enabling models trained in one framework (PyTorch, TensorFlow) to run in another runtime. ONNX Runtime optimizes the execution of these models across hardware. ^[extracted]

## Related

- [[entities/foundry-local|Foundry Local]] — uses ONNX Runtime as its inference acceleration layer
- [[entities/olive-optimizer|Olive]] — model optimization tool that prepares models for ONNX Runtime
- [[entities/pytorch|PyTorch]] — training framework; ONNX Runtime provides faster inference
- [[concepts/on-device-inference|On-Device Inference]] — the paradigm ONNX Runtime enables

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
