---
title: "Olive (Model Optimizer)"
category: entities
tags:
  - model-optimization
  - microsoft
  - onnx
  - performance
  - quantization
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Microsoft's Olive model optimization tool that prepares AI models for efficient execution on ONNX Runtime across different hardware targets, enabling the hardware-specific variants found in Foundry Local."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/onnx-runtime|ONNX Runtime]]"
    type: prepares-for
  - target: "[[entities/foundry-local|Foundry Local]]"
    type: feeds-into
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: enables
---

# Olive (Model Optimizer)

**Olive** is Microsoft's model optimization tool designed to prepare AI models for efficient execution on [[entities/onnx-runtime|ONNX Runtime]] across different hardware targets. ^[inferred] It is mentioned alongside ONNX Runtime as a core component of the Foundry Local stack. ^[extracted]

## Purpose

Olive optimizes models for specific hardware configurations, producing the hardware-specific variants that Foundry Local exposes to developers. ^[inferred] Where ONNX Runtime executes models efficiently, Olive ensures the models are structured and optimized for the target hardware before execution. ^[inferred]

## Optimization Techniques

While the talk did not detail Olive's specific techniques, model optimization tools in this category typically include: ^[inferred]

- **Quantization** — reducing model precision (FP16 → INT8/INT4) for faster inference
- **Operator fusion** — combining consecutive operations to reduce kernel launch overhead
- **Graph optimization** — eliminating redundant nodes, constant folding
- **Hardware-specific codegen** — generating optimized kernels for target silicon

These techniques produce the CPU, CUDA, integrated GPU, and NPU variants that Foundry Local's CLI lists for each supported model. ^[inferred]

## Relationship to Foundry Local

Olive is the optimization pipeline that feeds into Foundry Local: models are optimized via Olive, converted to ONNX format, then executed by ONNX Runtime through Foundry Local's management service. ^[inferred]

## Related

- [[entities/onnx-runtime|ONNX Runtime]] — the execution engine Olive prepares models for
- [[entities/foundry-local|Foundry Local]] — the platform that exposes Olive-optimized models
- [[concepts/quantization-inference|Quantization for Inference]] — optimization technique Olive likely employs

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
