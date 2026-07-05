---
title: "Model Quality vs Latency Tradeoff"
category: concepts
tags:
  - model-selection
  - performance
  - quality
  - inference
  - local-ai
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "The fundamental tradeoff in on-device AI between model size/quality and inference speed — larger models produce better outputs but run slower, smaller models are faster but less capable. Developers must select based on their application's requirements."
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
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: complements
  - target: "[[concepts/on-device-inference|On-Device Inference]]"
    type: applies_to
---

# Model Quality vs Latency Tradeoff

In on-device AI, there is a fundamental tradeoff between model quality and inference latency. ^[extracted] Larger, more capable models produce better outputs but run slower; smaller, faster models respond quickly but with reduced quality. ^[inferred]

## The Observed Tradeoff

During a live demo at AIEF2025, Emma Ning compared two models on the same hardware: ^[extracted]

- **Llama C++ model** — Faster (~90 tokens/sec), but less detailed output
- **Phi-3.5 (Si-4 mini)** — More advanced, bigger model size, slower performance, but provides more detailed and higher-quality information

The presenter's personal vote was Phi-3.5: ^[extracted]

> "In terms of performance, it is a bit smaller than Llama model. But in terms of the quality, as you can see, 5-4 mini can provide more detailed information."

This illustrates the core decision developers face: optimize for speed or optimize for quality. ^[inferred]

## Factors Influencing the Tradeoff

Several factors modulate this tradeoff: ^[inferred]

1. **Hardware type** — GPU acceleration narrows the gap; NPU may favor certain model sizes
2. **Quantization** — Lower precision models run faster with minimal quality loss
3. **Model architecture** — Some architectures (e.g., Phi-3.5) are more efficient per parameter than others
4. **Application requirements** — Summarization may tolerate smaller models; code generation may require larger ones

## Developer Workflow

The Foundry Local CLI supports iterative exploration of this tradeoff: ^[extracted]

1. `foundry model list` — see available models and their hardware variants
2. `foundry model run` — test quality interactively
3. `foundry model run --verbose` — measure performance (tokens/sec)
4. Select the model that balances quality and speed for the use case
5. Hardcode the model ID in the application

## Related

- [[concepts/on-device-inference|On-Device Inference]] — the context where this tradeoff matters
- [[concepts/quantization-inference|Quantization for Inference]] — technique that shifts the tradeoff
- [[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]] — hardware factor in the tradeoff
- [[concepts/local-model-management|Local Model Management]] — the workflow for model selection

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
