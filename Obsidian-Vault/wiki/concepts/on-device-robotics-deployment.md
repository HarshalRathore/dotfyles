---
title: "On-Device Robotics Deployment"
category: concepts
tags:
  - robotics
  - edge-computing
  - deployment
  - on-device
  - inference
  - foundation-models
aliases:
  - edge robotics
  - on-device robot policies
  - robotics inference
sources:
  - "AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk"
summary: "The challenge of deploying large robot control policies across multiple on-premise, on-device robot locations — no standard solution exists for running VLA models on actual robots."
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
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: deploys
  - target: "[[concepts/compute-bound-vs-memory-bound|Compute-Bound vs Memory-Bound]]"
    type: relates-to
  - target: "[[concepts/inference-training-blur|Inference-Training Blur]]"
    type: relates-to
---

# On-Device Robotics Deployment

**On-device robotics deployment** refers to the challenge of running large robot control policies (such as VLA models) directly on physical robots, across multiple on-premise locations. Unlike VLM inference, which can leverage cloud-based compute with established libraries, robotics requires policies to run entirely on-device with no cloud dependency — and there is currently no standard solution for this. ^[extracted]

## The Deployment Problem

The three deployment challenges for VLA models are: ^[extracted]

1. **On-device compute** — Robots have limited compute resources compared to cloud GPUs; VLA models must be optimized or compressed to run on embedded hardware
2. **Multiple locations** — Policies must be deployed across many robots in different physical locations, each potentially with different environments and configurations
3. **No standard solution** — Unlike VLM deployment (cloud-based, well-established libraries), robotics deployment is an open engineering problem

## Contrast with VLM Deployment

| Aspect | VLM Deployment | VLA Deployment |
|--------|---------------|----------------|
| **Compute** | Cloud-based, scalable | On-device, constrained |
| **Libraries** | Well-established inference libraries | No standard solution |
| **Scale** | Single model, many users | Many robots, many locations |
| **Latency** | Tolerant of network latency | Requires real-time, high-frequency control |

The high-frequency control requirement means VLA models must produce actions fast enough to keep the robot stable — this is a key architectural driver for adapting VLM backbones for robotics. ^[extracted]

## Related

- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — The models being deployed
- [[concepts/compute-bound-vs-memory-bound|Compute-Bound vs Memory-Bound]] — The hardware constraint
- [[concepts/inference-training-blur|Inference-Training Blur]] — The boundary between training and deployment
- [[concepts/robotics-control-loop|Robotics Control Loop]] — The system receiving deployed policies
