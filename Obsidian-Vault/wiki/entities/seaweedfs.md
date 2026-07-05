---
title: SeaweedFS
category: entities
tags: [distributed-storage, filesystem, object-storage, ml-infrastructure, storage]
summary: Distributed filesystem used by Luma AI for storing model weights, checkpoints, and intermediate data across their multi-provider GPU inference fleet.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[distributed-inference]]"
    type: uses
  - target: "[[model-versioning]]"
    type: related_to
  - target: "[[inference-serving]]"
    type: related_to
---

SeaweedFS is an open-source distributed filesystem designed for high performance and scalability. It provides a POSIX-compatible interface with a master-server architecture that manages metadata and a volume-server architecture that stores data.

## Role in Luma AI's Infrastructure

Luma AI uses SeaweedFS as their distributed storage layer for the Dream Machine inference serving stack. It stores:

- **Model weights and checkpoints**: Each versioned model's weights are stored in SeaweedFS, accessible by any GPU worker in the fleet.
- **Intermediate data**: Preprocessed video/image data and inference intermediates are stored here for cross-cluster access.
- **Model version folders**: The immutable versioned model structure (v1.0, v1.1, etc.) lives in SeaweedFS object storage.

SeaweedFS enables the key architectural property that GPU workers can run "anywhere" — as long as they have network connectivity to Redis (for queues) and SeaweedFS (for storage), they can join the inference pool. This was critical to Luma's ability to rapidly scale from 500 to ~9,000 GPUs across multiple cloud providers during the Dream Machine launch.

## Relationship to Other Infrastructure

SeaweedFS complements [[entities/redis|Redis] (queue layer) and [[entities/tailscale|Tailscale]] (network layer) to form the three pillars of Luma's multi-provider GPU infrastructure. Together, they enable any machine with PyTorch to become a GPU worker without specialized provisioning.
