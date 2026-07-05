---
title: "Quantization for Inference"
category: concepts
tags:
  - quantization
  - inference
  - optimization
  - latency
  - cost
  - llm-serving
aliases:
  - model quantization inference
  - inference quantization
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Reducing model numerical precision during inference to speed up latency and decrease cost by enabling higher batch sizes. A composable technique that stacks with RAG and other optimization strategies."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: shifts
  - target: "[[concepts/quantization-aware-training|Quantization-Aware Training]]"
    type: related_to
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: stacks_with
  - target: "[[concepts/retrieval-augmented-generation|RAG]]"
    type: stacks_with
---

# Quantization for Inference

**Quantization for inference** is the technique of reducing a model's numerical precision (e.g., from 16-bit float to 8-bit integer or lower) during inference to improve latency and reduce cost by enabling higher batch sizes.

## Effect on the Pareto Frontier

As identified by [[entities/kyle-kranen|Kyle Kranen]] at AIEF2025, quantization has a dual effect:

1. **Speeds up latency** — Lower precision arithmetic is faster on modern GPUs (INT8/INT4 operations are significantly faster than FP16/BF16)
2. **Decreases cost** — Smaller model weights mean more models fit in GPU memory, enabling higher batch sizes and better throughput per dollar

## Compounding with Other Techniques

A key insight from Kranen: quantization is **composable** with other inference techniques. For example:

- Stack RAG to increase quality (which worsens latency) → then stack quantization to speed up latency again
- Combine with disaggregation: quantized models fit more easily into the memory-bound decode phase

The techniques are not independent and can be combined in sometimes non-obvious ways to squeeze the Pareto frontier in multiple directions.

## FP8 KV Cache Quantization on Small Models

Typically, quantizing small models (3B parameters) leads to noticeable quality degradation. However, for [[entities/orpheus-tts|Orpheus TTS]], FP8 quantization — including KV cache quantization — works "pretty well" despite the model's small size. ^[extracted] This is notable because it means even small models benefit from KV cache quantization on Hopper GPUs (H100/H200) with TensorRT-LLM's FP8 context and FMHA support. ^[extracted]

## Hardware Variant Production

[[entities/olive-optimizer|Olive]] produces hardware-specific quantized model variants (CPU, CUDA, NPU) for each supported model. ^[inferred] This means the quantization strategy — which precision, which operators to fuse — is tuned per-target hardware, and [[entities/foundry-local|Foundry Local]] exposes these variants to developers via its model catalog. ^[inferred]

## Relationship to Quantization-Aware Training

[[concepts/quantization-aware-training|Quantization-Aware Training (QAT)]] is the training-phase counterpart: it simulates quantization during training so the model learns to produce outputs robust to precision loss. QAT produces models that quantize better at inference time.

QAT is about training methodology; inference quantization is about deployment. They are complementary — QAT enables better inference quantization.

## Tradeoffs

- **Accuracy loss** — Lower precision can reduce model quality, though QAT minimizes this
- **Hardware dependency** — Benefits depend on GPU support for low-precision operations
- **Model-specific** — Some models quantize better than others
- **Hardware variant availability** — [[entities/olive-optimizer|Olive]] produces hardware-specific quantized variants (CPU, CUDA, NPU) for each model, so the quantization strategy depends on the target hardware ^[inferred]

## Related

- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — quantization shifts the frontier
- [[concepts/quantization-aware-training|Quantization-Aware Training]] — training-phase counterpart
- [[concepts/disaggregated-inference|Disaggregated Inference]] — stacks with quantization
- [[concepts/retrieval-augmented-generation|RAG]] — stacks with quantization for quality+latency optimization
- [[entities/olive-optimizer|Olive]] — produces hardware-specific quantized variants
- [[entities/foundry-local|Foundry Local]] — exposes quantized variants to developers

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
- AIEF2025 - Optimizing inference for voice models in production - Philip Kiely, Baseten - https://www.youtube.com/watch?v=gmTHs5T_YAE
- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
