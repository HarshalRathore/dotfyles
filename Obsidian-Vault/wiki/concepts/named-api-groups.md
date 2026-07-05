---
type: concept
title: "Named API Groups"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb]]"
tags:
  - deployment
aliases:
  - "/apis/<group>/<version>"
  - K8s API Groups
---
# Named API Groups

## Definition
Named API Groups are a Kubernetes API organization mechanism used to group related resources by domain or purpose, accessed via paths following the pattern `/apis/<group>/<version>`. They enable modular and newer Kubernetes functionality to be added and versioned independently from the core API.

## Key Characteristics
- Accessed through the `/apis/<group>/<version>` URL path structure
- Organize resources by functional domain or purpose
- Support independent versioning of specific feature sets
- Enable modular extension of the Kubernetes API without modifying core resources
- Allow for clear separation between stable and experimental features

## Applications
- Defining workloads (Deployments, StatefulSets) under the `apps/v1` group
- Managing network policies via the `networking.k8s.io/v1` group
- Extending Kubernetes with Custom Resource Definitions (CRDs) in new API groups
- Enabling alpha and beta features to be versioned separately from core resources
- Providing a structured path for future Kubernetes API evolution

## Related Concepts
- [[concepts/api-groups]]
- [[concepts/core-api-group]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Named API Groups (/apis/<group>/<version>)" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb
- "For modular and newer Kubernetes functionality" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb