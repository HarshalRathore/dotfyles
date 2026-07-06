---
type: concept
title: Updater
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- deployment
aliases:
- VPA Updater Component
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Updater
---
# Updater

## Definition
The Updater is a component of the Kubernetes Vertical Pod Autoscaler (VPA) responsible for evicting pods whose actual resource usage drifts outside the recommended range. It ensures pods are updated to match optimal resource specifications by triggering their eviction and subsequent recreation with new resource settings.

## Key Characteristics
- Acts as the enforcement mechanism within the VPA for resource adjustments.
- Monitors pods and evicts those violating the recommended resource thresholds.
- Works in conjunction with the VPA Recommender and the cluster's Admission Controller.
- Crucial for applying resource changes in VPA modes like `Recreate` and `Auto`.
- Facilitates workload efficiency by ensuring pods use optimal resource allocations.

## Applications
- **Enforcing Resource Adjustments:** Automatically adjusts pod resources to match recommendations, improving cluster resource utilization and preventing performance issues.
- **VPA Mode Implementation:** Essential for the operation of VPA in `Recreate` mode (evicts pods for updates) and `Auto` mode (uses evictions for updates when feasible).
- **Workload Optimization:** Helps maintain application performance and stability by ensuring pods do not under-utilize or over-utilize resources.

## Related Concepts
- [[concepts/vertical-pod-autoscaler]]
- [[concepts/recommender]]
- [[concepts/admission-controller]]

## Related Entities

## Mentions in Source
- "Updater: evicts pods that drift outside recommended range." — kubernetes-autoscaling_59fbf3