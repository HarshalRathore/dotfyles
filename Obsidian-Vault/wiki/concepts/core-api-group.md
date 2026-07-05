---
type: concept
title: "Core API Group"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb]]"
tags:
  - deployment
aliases:
  - Core Kubernetes API Group
  - v1 Core API
---
# Core API Group

## Definition
The Core API Group is the primary and default API group in the Kubernetes API, identified by the path `/api/v1` without a named group prefix. It contains the foundational resources essential for basic cluster operations, such as Pods, Services, and Nodes, forming the fundamental layer of Kubernetes functionality.

## Key Characteristics
- **Default API Group**: It is the implicit, unversioned group accessed via the `/api/v1` endpoint.
- **Includes Foundational Resources**: Contains core objects like Pods, Services, Nodes, Namespaces, Secrets, and ConfigMaps.
- **Simplified Path**: Does not use the named group prefix format (e.g., `apps/v1`), using a simpler path structure.
- **Essential for Cluster Operations**: Provides the basic building blocks required to run and manage workloads on a Kubernetes cluster.

## Applications
- **Basic Workload Management**: Deploying and managing containers using Pods and ReplicaSets.
- **Cluster Infrastructure**: Defining cluster nodes, namespaces, and core networking services.
- **Configuration and Secret Management**: Managing application configuration and sensitive data through ConfigMaps and Secrets.
- **Foundation for Higher-Level Abstractions**: Serves as the base upon which higher-level API groups (like `apps`, `batch`) are built.

## Related Concepts
- API Groups
- Named API Groups

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Core API Group (/api/v1 – no named group prefix)" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb
- "Includes core Kubernetes resources like: Pods, Services, Nodes, Namespaces, Secrets, ConfigMaps" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb