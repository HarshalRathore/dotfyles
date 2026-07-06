---
type: concept
title: Extension points in scheduling
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/scheduling_f2b3ef]]'
tags:
- scheduling
aliases:
- Scheduler Extension Points
- Framework Extension Points
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Extension points in scheduling
---
# Extension points in scheduling

## Definition
Extension points in the Kubernetes Scheduling Framework are predefined hooks within the scheduling workflow. Plugins can be registered to these specific points to execute custom logic and influence how Pods are assigned to Nodes.

## Key Characteristics
- **Predefined Hooks:** They are fixed, named stages in the Kubernetes scheduling lifecycle (e.g., QueueSort, Filter, Score).
- **Plugin Registration:** Custom or built-in scheduling plugins register to execute at one or more of these points.
- **Modular Architecture:** This design allows for a highly modular and customizable scheduler without modifying core code.
- **Profile-Based Configuration:** Plugins and their behavior are configured via Profiles in the `KubeSchedulerConfiguration` file.
- **Specific Roles:** Each extension point serves a dedicated purpose, from initial sorting (`QueueSort`) to final binding (`PostBind`).

## Applications
- **Custom Scheduling Logic:** Implementing bespoke filtering or scoring rules tailored to specific organizational policies or workload requirements.
- **Advanced Resource Management:** Using preemption (`PostFilter`) or reservation (`Reserve`) points to manage cluster resource contention.
- **Workflow Integration:** Hooking external systems or decision-making services into the scheduling process via `PreBind` or `Bind` points.
- **Optimizing Scheduling Performance:** Using `NormalizeScore` to fine-tune scoring algorithms or `QueueSort` to prioritize critical Pods.

## Related Concepts
- 
- [[concepts/scheduler-profiles]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "A plugin can register at one or more extension points: QueueSort, PreEnqueue, PreFilter, Filter, PostFilter, PreScore, Score, NormalizeScore, Reserve, Permit, PreBind, Bind, PostBind" — scheduling_f2b3ef
- "Plugins are configured via Profiles in the KubeSchedulerConfiguration." — scheduling_f2b3ef