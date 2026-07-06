---
summary: The Rolling Update strategy is the default deployment strategy used by Kubernetes Deployments to upgrade applications without causing downtime. It ensures continuous availability by gradually r...
type: concept
title: Rolling Update Strategy
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/rolling-updates-&-rollbacks_f484ef]]'
- '[[sources/replication-controller-&-replicaset_285a2a]]'
category: concepts
tags: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
The Rolling Update strategy is the default deployment strategy used by Kubernetes Deployments to upgrade applications without causing downtime. It ensures continuous availability by gradually replacing old application Pods with new ones, a process managed by higher-level controllers like Deployments via ReplicaSets. This method is characterized by zero downtime, gradual replacement, and a seamless transition where Kubernetes manages the creation of a new ReplicaSet and progressively shifts traffic from the old version to the new version. It is a common and safe strategy for stateless applications, where temporary coexistence of old and new versions is acceptable. The strategy works by taking one old Pod down and bringing one new Pod up in a continuous, controlled loop, allowing for a safe and smooth upgrade process that minimizes disruption. In contrast to strategies like recreate, the rolling update minimizes disruption during changes.

## Related Concepts
- [[concepts/deployment-rollout-status]]
- Recreate Strategy
- ReplicaSets

## Related Entities
- [[entities/pods]]
- [[entities/kubernetes]]

## Mentions in Source
> **Source: rolling-updates-&-rollbacks_f484ef**
> - "
  - "
> - "
  - "
> - "
  - "

> **Source: replication-controller-&-replicaset_285a2a**
> - "