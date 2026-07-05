---
title: Fair Scheduling in ML Serving
category: concepts
tags: [scheduling, fair-scheduling, priority, sla, work-starvation, multi-tenant]
summary: Scheduling systems that fairly allocate limited GPU resources across multiple user tiers, preventing work starvation through SLA-aware aging mechanisms.
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
  - target: "[[work-starvation]]"
    type: extends
  - target: "[[sla-based-scheduling]]"
    type: extends
  - target: "[[back-pressure]]"
    type: related_to
  - target: "[[gpu-scaling]]"
    type: related_to
---

Fair scheduling in ML serving is the problem of allocating limited GPU resources across multiple user tiers with different priority levels, ensuring that no tier is permanently starved of compute while respecting service-level objectives for each tier.

## The Multi-Tier Problem

Luma serves multiple user tiers simultaneously:
- **API tier**: Paid API users — need fast processing (SLA: ~2 minutes)
- **Enterprise tier**: Enterprise customers
- **Unlimited tier**: Premium free-tier users
- **Plus tier**: Mid-tier subscribers
- **Light tier**: Free/basic users — can tolerate longer waits (SLA: ~10 minutes)

A naive priority scheduler (always process highest priority first) causes work starvation: lower-tier jobs may never get processed if higher-tier jobs continuously arrive.

## Luma's SLA-Based Fair Scheduling

Luma's system, implemented by engineer Sorish, uses an SLA-aware aging mechanism:

### Phase 1: Basic Aging
Jobs age in the queue — the longer they wait, the higher their effective priority. The aging function is controlled by product-defined SLAs (worst-case acceptable wait times per tier). When a job reaches 50% of its SLA threshold, it gets pulled to the front of the queue.

**Problem**: This creates a new starvation pattern. A light-tier job that has been waiting a long time (near its SLA) can consume resources that should go to an API-tier job that needs faster processing.

### Phase 2: SLA-Percentage Ranking
Jobs are ranked by the **percentage of their SLA** they've consumed, not absolute priority or absolute wait time:
- An API job waiting 1 minute (50% of 2-min SLA) ranks the same as a light job waiting 5 minutes (50% of 10-min SLA)
- This produces "intuitive fair scheduling behaviors" in practice

## Key Design Insight

The critical insight: fair scheduling is a **product problem**, not just an engineering problem. The SLA thresholds that control aging behavior are defined by the product team based on user expectations, not purely technical constraints. This means scheduling policy is a business decision with engineering implications.

## Relationship to Other Systems

Fair scheduling operates on top of:
- **Decoupled architecture**: CPU workers pull from global queues; scheduling determines pull order
- **Dispatch limitation**: Prevents one cluster from hoarding jobs, complementing fair scheduling at the cluster level
- **GPU scaling**: Burst scaling on the training cluster provides additional capacity when fair scheduling determines work should be processed
