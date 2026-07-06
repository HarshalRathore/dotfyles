---
title: Redis
category: entities
tags: [in-memory-datastore, distributed-queue, cache, key-value-store, ml-infrastructure]
summary: In-memory data store used by Luma AI as the distributed queue backbone for their decoupled CPU/GPU inference serving architecture.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/decoupled-architecture]]"
    type: uses
  - target: "[[concepts/distributed-inference]]"
    type: related_to
  - target: "[[concepts/inference-serving]]"
    type: related_to
---

Redis is an open-source, in-memory data structure store used as a database, cache, and message broker. It provides a key-value data model with support for various data structures including strings, hashes, lists, sets, and sorted sets.

## Role in Luma AI's Infrastructure

Luma AI uses Redis as the distributed queue backbone for their decoupled CPU/GPU inference serving architecture. CPU workers push preprocessed work (video/image inputs, captions, prompts) into Redis-backed queues; GPU workers pull from these queues independently. This enables:

- **Global work distribution**: Multiple GPU clusters across different cloud providers pull from the same Redis queue, enabling resource pooling.
- **Decoupling**: CPU preprocessing and GPU inference operate on different timescales without blocking each other.
- **Cross-cluster connectivity**: Any GPU worker with network access to Redis can participate in the inference pool, regardless of physical location.

Redis's low-latency in-memory operations make it well-suited for the high-throughput queue operations required by Dream Machine's serving stack, where thousands of GPU workers are constantly pulling and pushing work items.

## Relationship to Other Infrastructure

Redis works alongside [[entities/seaweedfs|SeaweedFS]] (distributed storage for model weights and data) and [[entities/tailscale|Tailscale]] (network connectivity) to form the backbone of Luma's multi-provider GPU infrastructure. The combination allows GPU workers to run on any machine with PyTorch, Redis connectivity, and storage access.
