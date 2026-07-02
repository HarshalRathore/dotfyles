---
type: concept
title: "API Groups"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb"
tags:
  - deployment
aliases:
  - K8s API Groups
  - API Group
---
# API Groups

## Definition
API Groups in Kubernetes are a logical mechanism for organizing API resources into distinct categories. This structure is fundamental to managing the versioning and evolution of the Kubernetes API, allowing different sets of resources to be developed and extended independently.

## Key Characteristics
- They logically group related API resources together.
- The structure consists of a `core` group (often referred to as the legacy API) containing essential resources like Pods and Services, and numerous `named groups` (e.g., `apps`, `networking.k8s.io`) for more specific functionalities.
- This organization facilitates independent versioning and evolution of resources within each group.
- Each group contains specific resources, and each resource supports a defined set of verbs (actions) like `create`, `get`, `list`, `update`, and `delete`.
- The grouping is integral to Kubernetes authorization (RBAC), allowing permissions to be defined at the group, resource, or verb level.


## Applications
- **API Management**: Allows for the clean introduction of new features and the deprecation of older APIs without breaking the entire system.
- **Modular Development**: Enables different SIGs (Special Interest Groups) and components to propose and manage APIs for their specific domain (e.g., `autoscaling`, `batch`, `rbac.authorization.k8s.io`).
- **Access Control (RBAC)**: Provides the primary structure for defining ClusterRoles and Roles. Administrators can grant permissions broadly to an entire group or finely to specific resources and verbs.
- **Client Generation**: Tools like client libraries use the API group and version information to generate code for interacting with specific resources.


## Related Concepts
- [[concepts/core-api-group]]
- [[concepts/named-api-groups]]
- [[concepts/resources-and-verbs]]

## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- "Kubernetes APIs are logically grouped into core and named groups." — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb
- "Each group has resources, and each resource supports various verbs (actions)." — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb