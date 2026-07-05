---
title: Back Pressure in ML Serving
category: concepts
tags: [back-pressure, queue-management, dispatch-limitation, distributed-systems, ml-infrastructure]
summary: The phenomenon where decoupled ML serving systems create imbalanced queues when CPU workers pull more work than GPU clusters can process. Luma's dispatch limitation system addresses this.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
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
  - target: "[[decoupled-architecture]]"
    type: extends
  - target: "[[fair-scheduling]]"
    type: related_to
  - target: "[[work-starvation]]"
    type: related_to
  - target: "[[sla-based-scheduling]]"
    type: related_to
---

Back pressure in ML serving occurs when a decoupled architecture allows CPU workers to pull more work into a GPU cluster than that cluster's GPUs can process, creating imbalanced queues where jobs wait unnecessarily.

## The Problem

In a decoupled CPU/GPU architecture with a global queue, multiple CPU clusters can pull work from the same queue and submit it to different GPU clusters. Without coordination:

1. CPU workers in Cluster A pull jobs destined for Cluster A's GPUs
2. Cluster A's GPUs become saturated
3. Jobs pile up in Cluster A's queue, waiting for GPU availability
4. Meanwhile, Cluster B's GPUs might be idle but can't pull Cluster A's queued work

This creates **localized queue buildup** — jobs are effectively "stuck" behind a particular GPU cluster even though other clusters could process them faster.

## Luma's Solution: Dispatch Limitation

Luma implemented a dispatch limitation system that caps the number of jobs in the "pulled but not yet picked up by a GPU" state for each cluster. The mechanism:

1. When a job is pulled from the global queue and assigned to a cluster, it enters a "waiting for GPU" state
2. Each cluster has a configurable limit on how many jobs can be in this state simultaneously
3. Once the limit is reached, CPU workers stop pulling jobs for that cluster
4. This forces work to be redistributed to clusters with available capacity

## Relationship to Other Concepts

Back pressure management intersects with:
- **Fair scheduling**: Dispatch limitations must work alongside priority scheduling to prevent starvation
- **SLA-based scheduling**: The aging mechanism must account for jobs stuck in dispatch limitation queues
- **Work starvation**: Poor back pressure management can cause or exacerbate starvation of lower-priority tiers

## Design Tradeoffs

- **Tighter limits**: Better load balancing but higher network overhead from job reassignment
- **Looser limits**: Lower overhead but risk of localized queue buildup
- **Static vs dynamic**: Fixed limits are simple; dynamic limits that adapt to cluster load are more complex but more effective
