---
title: Distributed Inference
category: concepts
tags: [inference, multi-node, gpu-distribution, distributed-systems, video-models]
summary: Running model inference across multiple GPUs and nodes to achieve acceptable latency for large models, particularly video generation models that require significant compute.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[inference-serving]]"
    type: related_to
  - target: "[[decoupled-architecture]]"
    type: extends
  - target: "[[gpu-scaling]]"
    type: related_to
  - target: "[[enterprise-inference-infrastructure]]"
    type: related_to
---

Distributed inference is the practice of running a single model's inference across multiple GPUs and/or nodes to achieve the latency and throughput required for production workloads. This is especially critical for video generation models, which are significantly larger and more compute-intensive than text-only models.

## Why Video Models Need Distribution

Video models like Luma's Dream Machine and Ray2 are "big" — typically composed of 10-20 different sub-models. They require:
- Loading many model weights into GPU memory
- Compiling operations across multiple devices
- Coordinating inference across GPU nodes for acceptable latency

A single GPU cannot hold or process these models fast enough for real-time user experiences.

## Luma's Distributed Architecture

Luma achieves distributed inference through a combination of:

1. **Multi-GPU, multi-node GPU workers**: Each GPU worker can span multiple GPUs and nodes, pulling work from a global Redis queue.
2. **SeaweedFS for distributed storage**: Model weights and intermediate data are stored in a distributed filesystem accessible from any GPU node.
3. **Tailscale for cross-cluster connectivity**: GPU workers in any cloud provider or VM can connect to the shared queue and storage infrastructure, enabling ad-hoc compute pooling.
4. **Vanilla PyTorch as the substrate**: PyTorch's built-in distributed primitives handle multi-GPU communication without vendor-specific tooling.

## Scaling Strategy

When faced with the Dream Machine launch traffic surge, Luma scaled distributed inference by:
1. Taking all available GPUs from every cloud provider (~5,000 H100s in 6 hours)
2. Repurposing their entire training cluster (~4,000 additional H100s)
3. Running commands to start PyTorch workers on any available machine
4. Connecting everything via Tailscale to the shared Redis queue

This approach eliminated the need for specialized provisioning — any machine with PyTorch, Redis connectivity, and storage access could become a GPU worker.

## Tradeoffs

Distributed inference adds complexity:
- **Compilation overhead**: Loading and compiling 10-20 sub-models takes 10-20 minutes, making traditional auto-scaling wasteful
- **Coordination complexity**: Managing work distribution across clusters requires careful backpressure and scheduling
- **Cold start cost**: Warming up a new GPU worker is expensive in terms of GPU time
