---
type: concept
title: "updatePolicy.mode"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-autoscaling_59fbf3"
tags:
  - deployment
aliases:
  - VPA updatePolicy.mode
  - Vertical Pod Autoscaler update policy mode
---
# updatePolicy.mode

## Definition
A configuration field within the Vertical Pod Autoscaler (VPA) that specifies the strategy for managing pod updates and resource adjustments. It determines how and when the VPA applies recommended resource changes to running pods, controlling the balance between automation and operational stability.

## Key Characteristics
- It is a core setting in the VPA's `updatePolicy` configuration block.
- It offers four distinct modes: Off, Initial, Recreate, and Auto.
- The **Off** mode enables recommendation-only functionality, making no changes to existing pods.
- The **Initial** mode applies resource settings only at the time of pod creation.
- The **Recreate** mode forces a pod restart (via eviction) whenever a resource adjustment is needed.
- The **Auto** mode is designed to support future in-place resource updates, with a fallback to recreating pods.
- This setting allows operators to tailor VPA behavior for different workload types and risk tolerances.

## Applications
- Used to disable active scaling (set to `Off`) while still gaining resource usage recommendations from the VPA.
- Applied to stateless or resilient workloads where pod restarts are acceptable (set to `Recreate`).
- Configured for initial pod creation only to avoid disrupting long-running, stateful workloads (set to `Initial`).
- Set to `Auto` to leverage the latest scaling technologies as they become available, providing a balance of performance and compatibility.

## Related Concepts
- [[concepts/vertical-pod-autoscaler]]
- [[concepts/recommender]]
- [[concepts/updater]]
- [[concepts/admission-controller]]

## Related Entities

## Mentions in Source
- "Modes (updatePolicy.mode): Off = only recommendations (no pod changes). Initial = set resources on creation only. Recreate= evict & recreate pods when needed. Auto = future in-place updates + recreate fallback." — kubernetes-autoscaling_59fbf3
- "updatePolicy.mode in VPA configuration determines the update strategy for pod resources." — kubernetes-autoscaling_59fbf3