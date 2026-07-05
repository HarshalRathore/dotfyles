---
type: concept
title: "multi-container pod"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/init-containers_798910]]"
tags:
  - deployment
aliases:
  - pods with multiple containers
---
# multi-container pod

## Definition
A multi-container pod is a pod configuration in Kubernetes that contains more than one container, where all containers share the same network namespace, storage volumes, and lifecycle. It enables co-location of tightly coupled workloads that need to communicate via localhost or share filesystem resources on the same node.

## Key Characteristics
- Contains two or more containers within a single pod
- All containers share the same network namespace (IP address and port space), allowing communication via localhost
- All containers share the same storage volumes mounted into the pod
- All containers share the same lifecycle — they are created, scheduled, and terminated together
- Each regular container is expected to run a process that stays alive as long as the pod's lifecycle
- Extends the pattern by allowing init containers to run to completion before main containers start
- Containers are co-located and co-scheduled on the same node

## Applications
- **Sidecar pattern**: Running a supplementary container alongside a main application container, such as a logging agent (e.g., Fluent Bit or Fluentd) alongside a web application
- **Ambassador pattern**: Proxying and routing outbound network connections from an application container through a companion proxy container
- **Adapter pattern**: Standardizing or transforming output from the main application container into a consistent format
- **Initialization and setup**: Using init containers to perform database migrations, configuration generation, or dependency checks before main application containers start
- **Shared-cache patterns**: Multiple containers reading from or writing to a common in-memory or volume-backed cache

## Related Concepts
- [[concepts/init-container]]
- Pods
- [[concepts/deployment]]
- [[concepts/sidecar-pattern]]

## Related Entities

## Mentions in Source
- "In a multi-container pod, each container is expected to run a process that stays alive as long as the POD's lifecycle." — init-containers_798910
- "For example in the multi-container pod that we talked about earlier that has a web application and logging agent, both the containers are expected to stay alive at all times." — init-containers_798910