---
title: Dispatch Limitation in Multi-Cluster Serving
category: concepts
tags: [dispatch-limitation, back-pressure, queue-management, multi-cluster, ml-infrastructure]
summary: A queue management mechanism that limits the number of jobs assigned to a GPU cluster before being picked up, preventing localized queue buildup in decoupled CPU/GPU architectures.
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
  - target: "[[back-pressure]]"
    type: extends
  - target: "[[decoupled-architecture]]"
    type: related_to
  - target: "[[fair-scheduling]]"
    type: related_to
---

Dispatch limitation is a queue management mechanism that caps the number of jobs in a "pulled but not yet processed" state for each GPU cluster. It prevents the back pressure problem where CPU workers pull more work into one cluster than its GPUs can handle.

## The Problem

In a decoupled CPU/GPU architecture with a global queue and multiple GPU clusters:

1. CPU workers in Cluster A pull jobs from the global queue
2. Jobs are assigned to Cluster A's GPUs
3. Cluster A's GPUs become saturated
4. Jobs pile up in Cluster A's queue, waiting for GPU availability
5. Cluster B's GPUs might be idle but can't process Cluster A's queued work

This creates **localized queue buildup** — jobs are effectively "stuck" behind a particular GPU cluster even though other clusters could process them faster.

## The Solution

Dispatch limitation adds a configurable cap per cluster:

1. When a job is pulled from the global queue and assigned to a cluster, it enters a "waiting for GPU" state
2. Each cluster has a configurable limit on how many jobs can be in this state simultaneously
3. Once the limit is reached, CPU workers stop pulling jobs for that cluster
4. CPU workers redirect to other clusters with available capacity

## Design Tradeoffs

- **Tighter limits**: Better load balancing but higher network overhead from job reassignment
- **Looser limits**: Lower overhead but risk of localized queue buildup
- **Static vs dynamic**: Fixed limits are simple; dynamic limits that adapt to cluster load are more complex but more effective

## Relationship to Fair Scheduling

Dispatch limitation operates at the cluster level, while fair scheduling operates at the job-priority level. Together they ensure that: (1) work is distributed across clusters proportionally to capacity, and (2) within each cluster, jobs are processed fairly across user tiers.
