---
title: Inference Serving
category: concepts
tags: [inference, model-serving, gpu-inference, ml-infrastructure, serving-stack]
summary: The architecture and operational patterns for serving trained ML models at scale during inference. Luma AI's journey from Triton to custom PyTorch-based serving illustrates key design tradeoffs.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/enterprise-inference-infrastructure]]"
    type: extends
  - target: "model-serving-stack"
    type: related_to
  - target: "[[entities/triton-inference-server]]"
    type: related_to
  - target: "[[concepts/prefill-decode-throughput-tradeoff]]"
    type: related_to
---

Inference serving is the practice of deploying trained ML models to process real-time requests and produce outputs. It encompasses model loading, request routing, GPU allocation, batching, and response delivery at production scale.

## Serving Stack Evolution: Luma's Case Study

Luma AI's experience with Dream Machine illustrates a common pattern in ML infrastructure: starting with an established serving solution, then building custom infrastructure when production demands exceed what off-the-shelf tools provide.

**Phase 1 — Off-the-shelf (Triton)**: Luma initially used NVIDIA's Triton Inference Server, a general-purpose model serving platform. This worked for initial launch but proved brittle under extreme load — CPU processes didn't detect Triton failures, multi-node GPU orchestration was inadequate for video models, and the developer experience was poor for researchers.

**Phase 2 — Custom PyTorch stack**: Luma rebuilt their serving infrastructure on vanilla PyTorch, gaining:
- Multi-node, multi-GPU orchestration natively
- Hardware agnosticism (any chipset that supports PyTorch)
- Decoupled CPU/GPU worker architecture
- Direct researcher control over the serving code

## Key Design Patterns

### Decoupled CPU/GPU Architecture
CPU workers queue incoming requests and pull from distributed queues; GPU workers pick up queued work independently. This prevents GPU blocking on I/O-bound preprocessing and allows heterogeneous compute placement.

### Pull-Based Scheduling
Instead of push-based dispatch, GPU workers actively pull from global queues. This creates natural backpressure: workers slow down when queues are empty and accelerate when work is available.

### Hardware Substrate Strategy
Targeting a universal compute substrate (PyTorch) rather than vendor-specific tooling enables multi-vendor GPU fleets. Performance is optimized over time through low-level kernel work, but initial deployment is immediate.

## Tradeoffs

Custom serving stacks require significant engineering investment but provide:
- Full control over scaling behavior
- Multi-vendor hardware support
- Researcher-friendly development experience
- Tailored scheduling and prioritization

Off-the-shelf solutions (Triton, vLLM, SGLang) provide faster time-to-market but may lack the flexibility needed for extreme-scale or multi-hardware deployments.

## Cloud Provider Model

Luma works with cloud providers who supply working Kubernetes clusters at minimum. The provider model varies: some provide VMs, others (like Amazon) provide bare metal machines. Luma does not provision nodes themselves — they receive a pre-configured cluster and run commands on it. This model simplifies infrastructure management but limits control over the underlying hardware provisioning.
