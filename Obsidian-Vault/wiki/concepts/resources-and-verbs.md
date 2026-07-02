---
type: concept
title: "Resources and Verbs"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb"
tags:
  - deployment
aliases:
  - K8s Resources and Verbs
---
# Resources and Verbs

## Definition
In the Kubernetes API, **Resources** refer to the individual object types available under each API group (e.g., Deployments, Pods, Services), while **Verbs** are the actions that can be performed on these resources (e.g., get, list, create, delete, update, watch). Together, they form the fundamental framework that defines how users and system components interact with the Kubernetes API, serving as the foundation for operations and authorization policies such as RBAC.

## Key Characteristics
- **Resources** are object types organized hierarchically under API groups and versions
- **Verbs** define the permitted operations: `get`, `list`, `create`, `delete`, `update`, `patch`, and `watch`
- Each resource has a specific set of available verbs depending on its design and purpose
- The Resource-Verb model is central to Kubernetes RBAC (Role-Based Access Control) policy definitions
- Resources are accessed via RESTful API endpoints following the pattern: `/apis/{group}/{version}/{resource}`
- Subresources (e.g., `/pods/log`, `/pods/status`) extend base resources with additional verbs
- Custom Resource Definitions (CRDs) allow users to define new resources with their own verb sets

## Applications
- **RBAC Authorization**: Defining roles and bindings that specify which subjects can perform which verbs on which resources
- **API Discovery**: Using `/apis` and `/api` endpoints to enumerate available resources and their supported verbs
- **Access Control Policies**: Implementing least-privilege principles by restricting verb access per resource
- **Custom Controllers**: Defining new resources via CRDs and implementing custom verbs for specialized operations
- **Audit Logging**: Tracking API requests by resource type and verb for security and compliance
- **Admission Control**: Validating or mutating requests based on resource type and intended verb

## Related Concepts
- [[concepts/api-groups]]
- [[concepts/rbac]]

## Related Entities
- [[kubernetes]]

## Mentions in Source
- "Resources: Individual object types under each group (e.g., deployments, pods)" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb