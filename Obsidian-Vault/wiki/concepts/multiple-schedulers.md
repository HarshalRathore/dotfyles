---
type: concept
title: Multiple schedulers
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/scheduling_f2b3ef]]'
tags:
- scheduling
aliases:
- custom schedulers
- Kubernetes multiple schedulers
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Multiple schedulers
---
# Multiple schedulers

## Definition
Multiple schedulers in Kubernetes refer to the ability to run several scheduler instances side-by-side, enabling custom scheduling logic without replacing the default scheduler. Each scheduler must have a unique name, and Pods can specify which scheduler to use via the `schedulerName` field.

## Key Characteristics
- Enables running multiple scheduler instances simultaneously alongside the default scheduler.
- Each scheduler must have a unique name to avoid conflicts.
- Pods specify their target scheduler using the `schedulerName` field in their spec.
- Allows for isolation and flexibility in scheduling decisions for different workloads.
- Facilitates the implementation of custom scheduling logic without modifying or replacing the core scheduler.

## Applications
- Deploying specialized workloads like GPU-aware placement that require custom resource-aware logic.
- Implementing domain-specific scheduling checks (e.g., for compliance, locality, or performance tiers).
- Separating scheduling responsibilities for different teams or workload types in a multi-tenant cluster.
- Testing and rolling out new scheduling algorithms in production alongside the stable default scheduler.

## Related Concepts
- 
- [[concepts/scheduler-profiles]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Kubernetes supports multiple schedulers running side-by-side, so you can add custom scheduling logic without replacing the default scheduler." — scheduling_f2b3ef
- "In your Pod or Deployment manifest, add: `spec: schedulerName: my-custom-scheduler`" — scheduling_f2b3ef