---
title: PyTorch
category: entities
tags: [deep-learning-framework, inference, gpu-compute, open-source, meta]
summary: Deep learning framework used by Luma AI as the substrate for their custom multi-vendor GPU inference serving stack, replacing NVIDIA's Triton Inference Server.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[nvidia]]"
    type: related_to
  - target: "[[amd]]"
    type: related_to
  - target: "[[triton-inference-server]]"
    type: related_to
  - target: "[[inference-serving]]"
    type: related_to
---

PyTorch is an open-source deep learning framework originally developed by Meta's AI Research lab. It has become the dominant framework for both research and production inference workloads in the AI industry.

At Luma AI, PyTorch serves as the universal substrate for their custom inference serving stack. The key strategic insight: chipset vendors (NVIDIA, AMD, Grok, etc.) ensure that PyTorch works on their hardware, at least at a baseline version. This means Luma can run their models on any chipset by targeting "very vanilla PyTorch" operations — achieving hardware agnosticism without writing custom kernels for each accelerator.

The tradeoff is performance: vanilla PyTorch code runs "a bit more slowly" on non-NVIDIA hardware. Luma addresses this with their "Excel team" of ~10 engineers who optimize low-level operations using tools like NVIDIA's Triton compiler, working directly with chipset providers to achieve production performance over time.

PyTorch's multi-vendor support enabled Luma's heterogeneous GPU strategy: running inference on H100s, AMD GPUs, and Grok chips from a single codebase. This was impossible with Triton Inference Server, which is NVIDIA-centric.
