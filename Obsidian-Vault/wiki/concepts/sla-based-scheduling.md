---
title: SLA-Based Scheduling
category: concepts
tags: [sla, scheduling, aging, priority, multi-tenant, fair-scheduling]
summary: A scheduling approach where job priority is determined by the percentage of their service-level objective (SLA) consumed, producing fair resource allocation across user tiers.
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
  - target: "[[fair-scheduling]]"
    type: extends
  - target: "[[work-starvation]]"
    type: related_to
  - target: "[[back-pressure]]"
    type: related_to
  - target: "[[gpu-scaling]]"
    type: related_to
---

SLA-based scheduling is a queue management strategy where a job's scheduling priority is determined by how much of its service-level objective (SLA) it has consumed, rather than by static tier priority or absolute wait time.

## The Aging Mechanism

The core idea is **queue aging**: the longer a job waits, the higher its priority becomes. But the question is: what function controls this aging?

Luma's approach ties aging directly to product-defined SLAs:

| Tier | SLA (max acceptable wait) | Priority threshold (50% of SLA) |
|------|--------------------------|--------------------------------|
| API | ~2 minutes | ~1 minute |
| Light | ~10 minutes | ~5 minutes |

When a job reaches the threshold (50% of SLA), it gets pulled to the front of the queue.

## The SLA-Percentage Ranking

Luma discovered that simple aging creates a new starvation pattern: a low-priority job with a long SLA that has been waiting for hours will consume resources meant for high-priority jobs with short SLAs.

The fix: rank jobs by **percentage of SLA consumed**, not absolute priority:

```
effective_priority = wait_time / sla_threshold
```

- API job waiting 1 min, SLA 2 min → 50% consumed → priority 0.50
- Light job waiting 5 min, SLA 10 min → 50% consumed → priority 0.50
- Both rank equally, producing intuitive fairness

## Why This Works

The SLA-percentage approach normalizes across tiers: a job that has waited "half its acceptable time" is equally urgent regardless of tier. This produces scheduling behavior that users perceive as fair because each tier's jobs are processed proportional to their SLA budget.

## Product-Engineering Boundary

A key insight from Luma: SLA thresholds are a **product decision**, not an engineering one. The product team defines what wait times are acceptable for each tier based on user expectations and business strategy. Engineering then implements the scheduling mechanism that enforces these SLAs.

This means changes to scheduling policy often require product team input, not just engineering decisions.
