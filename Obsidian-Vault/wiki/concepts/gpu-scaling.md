---
title: GPU Scaling for ML Inference
category: concepts
tags: [gpu-scaling, auto-scaling, burst-scaling, gpu-orchestration, ml-infrastructure]
summary: Strategies for scaling GPU compute resources to handle inference demand spikes — including Luma's approach of repurposing training clusters and auto-scaling on burst detection.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-serving]]"
    type: related_to
  - target: "[[concepts/distributed-inference]]"
    type: related_to
  - target: "[[concepts/fair-scheduling]]"
    type: related_to
  - target: "[[concepts/cold-start-recommendation]]"
    type: related_to
---

GPU scaling is the practice of dynamically adjusting GPU compute resources to match inference demand. For ML products experiencing traffic spikes, effective GPU scaling is critical to maintaining service quality.

## Luma's Launch-Day Scaling

Luma's Dream Machine launch demonstrated extreme GPU scaling under pressure:

| Phase | GPUs | Time | Method |
|-------|------|------|--------|
| Initial allocation | ~500 H100 | Before launch | Pre-provisioned |
| Emergency scaling | ~5,000 H100 | 6 hours | Manual SSH to all providers |
| Training cluster repurposing | ~9,000 H100 | During launch | Converted training GPUs to inference |

Despite scaling to ~9,000 GPUs, the queue was still growing during the launch — demonstrating that even massive GPU scaling can be insufficient for viral product launches.

## Scaling Strategies

### Pre-Provisioning
Allocate GPUs in advance based on expected demand. Luma allocated 500 H100s, which was "woefully unprepared" for actual demand. This approach fails for unpredictable viral growth.

### Emergency Scaling
Rapidly provision GPUs from all available providers. Luma's team manually SSH'd into every available GPU from every cloud provider to spin up workers. This is a stopgap measure, not a sustainable strategy.

### Training Cluster Repurposing
Convert training GPUs to inference when needed. Luma took their entire training cluster (~4,000 H100s) and ran PyTorch workers on them. This works but has tradeoffs:
- Training researchers lose compute access
- Training/inference workloads compete for the same hardware
- Researchers "hate" this (per Keegan's presentation)

### Auto-Scaling on Burst Detection
Luma built their system to auto-scale on the training cluster when demand spikes. This eliminates manual intervention but creates tension with research teams who depend on that cluster.

## The Cold Start Problem

GPU scaling is complicated by cold start costs: video models are composed of 10-20 sub-models that require 10-20 minutes to load and compile. Traditional auto-scaling is "super wasteful" because you spend 10-20 minutes of GPU time just warming up new instances before they can process any requests.

## Multi-Provider Strategy

Luma's architecture enables scaling across any GPU provider:
- Any VM with PyTorch, Redis connectivity, and storage access can become a GPU worker
- Tailscale connects heterogeneous clusters into a unified compute pool
- No specialized provisioning required — just run a command

This multi-provider approach is essential for handling viral traffic spikes that exceed any single provider's capacity.
