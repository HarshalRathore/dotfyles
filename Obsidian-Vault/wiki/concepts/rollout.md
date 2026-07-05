---
type: concept
title: "rollout"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/rolling-updates-&-rollbacks_f484ef]]"
tags:
  - deployment
aliases:
  - Kubernetes Rollout
---
# rollout

## Definition
A rollout in Kubernetes is the process triggered when a Deployment is created or updated, resulting in a new, versioned revision of the application. It is the fundamental mechanism for updating the pods managed by a Deployment.

## Key Characteristics
- **Triggered by Creation/Updates:** A rollout is initiated automatically when a new Deployment is created (creating Revision 1) or when an existing Deployment is updated, such as by changing a container image version.
- **Creates Revisions:** Each distinct rollout generates a new, immutable revision number (e.g., Revision 2, Revision 3), forming a history of changes.
- **Manageable via CLI:** The state and history of rollouts are observable and controllable using standard command-line tools.
- **Supports Rollbacks:** The revision history created by rollouts enables easy rollback to a previous stable state if an update introduces issues.

## Applications
- **Zero-Downtime Updates:** Enables the progressive update of applications running in a cluster without taking them offline.
- **Change Management:** Provides a clear, versioned audit trail of all configuration or code deployments for a specific application.
- **Disaster Recovery:** Allows operators to quickly revert a faulty deployment to a known good state by undoing a rollout.

## Related Concepts
- [[concepts/rolling-update-strategy]]
- replicasets

## Related Entities
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Mentions in Source
- It **triggers a rollout**, creating **Revision 1** (initial version). — rolling-updates-&-rollbacks_f484ef
- On updating (like changing the container version), **a new rollout happens**, creating **Revision 2**, and so on. — rolling-updates-&-rollbacks_f484ef