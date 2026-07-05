---
summary: "Selectors are queries that filter Kubernetes resources based on label values, enabling the identification of object sets for management and routing. They come in two main types: equality-based sele..."
type: concept
title: "Selectors"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/replication-controller-&-replicaset_285a2a]]"
  - "[[sources/labels-&-selectors_7e0f44]]"

---
## Description
Selectors are queries that filter Kubernetes resources based on label values, enabling the identification of object sets for management and routing. They come in two main types: equality-based selectors, which match specific label values using operators like `=`, `==`, and `!=` (e.g., `app=frontend`), and set-based selectors, which use `in`, `notin`, and `exists` for more complex list-based filtering (e.g., `environment in (production, staging)`). Equality-based selectors are used by older controllers like ReplicationControllers and are simpler but less flexible; they are crucial for operations like service traffic routing and replica management by precisely targeting objects in both kubectl commands and manifest files. Set-based selectors, supported by modern resources like ReplicaSets, offer greater versatility. Selectors are crucial in Services for routing traffic to appropriate Pods, in ReplicaSets for managing Pods, and in Deployments for controlling updates and scaling, enabling declarative management, self-healing, service discovery, and targeted rollouts.

## Related Concepts
- [[concepts/labels]]: The foundational metadata that Selectors query against.
- [[concepts/replicationcontroller]]: A legacy controller that uses equality-based Selectors.
- [[concepts/replicasets]]: The modern controller that supports both equality-based and set-based Selectors.
- [[concepts/set-based-selectors]]: The alternative selector type supporting list-based matches.

## Related Entities
- [[entities/pods]]: The primary objects that Selectors target and bind to within a controller.

## Mentions in Source
> **Source: replication-controller-&-replicaset_285a2a**
> - "
  - "
> - "
  - "
> - "
  - "

> **Source: labels-&-selectors_7e0f44**
> - "
  - "
> - "
  - "
> - "