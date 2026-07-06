---
title: Work Starvation in Queue-Based Scheduling
category: concepts
tags: [work-starvation, queue-scheduling, priority, multi-tenant, ml-infrastructure]
summary: The phenomenon where lower-priority jobs in a queue-based scheduling system are never processed because higher-priority jobs continuously consume available compute resources.
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
  - target: "[[concepts/fair-scheduling]]"
    type: related_to
  - target: "[[concepts/sla-based-scheduling]]"
    type: related_to
  - target: "[[concepts/back-pressure]]"
    type: related_to
  - target: "[[concepts/decoupled-architecture]]"
    type: related_to
---

Work starvation occurs in pull-based queue scheduling systems when lower-priority jobs are never processed because higher-priority jobs continuously arrive and consume available resources.

## The Fundamental Problem

In a priority-based pull scheduler with multiple tiers:
- API tier jobs are processed first
- Enterprise tier jobs are processed second
- Light/free tier jobs are processed last

If API and Enterprise jobs arrive continuously (which they do for a popular product), Light tier jobs may wait for 7-9 hours or never get processed at all. This is work starvation.

## Starvation Patterns

Luma encountered two distinct starvation patterns:

### Pattern 1: Static Priority Starvation
Naive priority scheduling (always process highest priority first) causes permanent starvation of lower tiers. Users in lower tiers wait indefinitely.

### Pattern 2: Aging-Induced Starvation
When basic aging is introduced (longer wait = higher priority), a different starvation pattern emerges: a low-priority job that has been waiting a long time (near its SLA limit) can consume resources meant for high-priority jobs with shorter SLAs. An API job that just arrived gets starved by a light-tier job that's been waiting for hours.

## Solutions

### Solution 1: SLA-Based Aging
Jobs age relative to their tier's SLA. When a job reaches 50% of its SLA threshold, it gets pulled forward. This prevents permanent starvation but creates Pattern 2 starvation.

### Solution 2: SLA-Percentage Ranking
Rank jobs by percentage of SLA consumed rather than absolute priority. This normalizes urgency across tiers and resolves both starvation patterns. An API job at 50% of its SLA ranks equally with a light job at 50% of its SLA.

## General Applicability

Work starvation is a fundamental problem in any multi-tenant, priority-based scheduling system — not just ML inference. It appears in:
- CI/CD pipelines with priority builds
- Cloud resource allocation with reserved vs on-demand instances
- Database query scheduling with transaction priorities
- Any queue system with heterogeneous arrival patterns

The SLA-percentage approach generalizes to any system where different classes of work have different acceptable wait time bounds.
