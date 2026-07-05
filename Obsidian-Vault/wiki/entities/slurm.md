---
title: SLURM
category: entities
tags: [job-scheduler, hpc, cluster-management, gpu-clusters, ml-infrastructure]
summary: Workload manager and job scheduler used by Luma AI to run PyTorch inference workers on their training cluster and manage burst scaling for Dream Machine.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[gpu-scaling]]"
    type: uses
  - target: "[[distributed-inference]]"
    type: related_to
  - target: "[[inference-serving]]"
    type: related_to
---

SLURM (Simple Linux Utility for Resource Management) is an open-source workload manager and job scheduler for Linux clusters, widely used in high-performance computing (HPC) environments.

## Role in Luma AI's Infrastructure

Luma AI uses SLURM as the scheduler for their PyTorch inference workers, particularly on their training cluster. The integration enables:

- **Burst scaling**: When Dream Machine demand spikes, Luma's system can auto-scale on the training cluster by submitting PyTorch worker jobs through SLURM. This increases the total pool of available GPUs when needed and scales down when demand decreases.
- **Training cluster repurposing**: During the launch crisis, SLURM enabled the rapid conversion of the training cluster's ~4,000 H100 GPUs to inference workloads.
- **Resource management**: SLURM manages GPU allocation across the training cluster, balancing inference workloads against the research team's training needs.

Keegan noted that auto-scaling on the training cluster "makes [researchers] very upset" — highlighting the tension between inference scaling and research compute needs when sharing hardware resources.

## Relationship to Other Infrastructure

SLURM sits at the resource management layer, coordinating with [[entities/redis|Redis] (queue layer), [[entities/seaweedfs|SeaweedFS]] (storage layer), and [[entities/tailscale|Tailscale]] (network layer) to enable Luma's decoupled CPU/GPU architecture. The simple scheduler running on top of SLURM can "just run these PyTorch workers" without complex orchestration.
