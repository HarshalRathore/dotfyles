---
type: concept
title: "Sidecar pattern"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/pods_c92b62]]"
tags:
  - deployment
aliases:
  - Sidecar
---
# Sidecar pattern

## Definition
The sidecar pattern is a design method in Kubernetes where a secondary container is deployed alongside the main application container within the same Pod to extend or enhance its functionality. This pattern facilitates modular application design by decoupling auxiliary functions from the main application container.

## Key Characteristics
- Involves a secondary (sidecar) container co-located with a primary application container within a single Pod.
- The sidecar container shares the Pod's network namespace and can communicate with the main container via `localhost`.
- Enables the separation of cross-cutting concerns, such as logging, networking, or configuration, from the core application logic.
- Promotes reusability and maintainability of auxiliary services across different applications.
- Is a primary motivation for Kubernetes supporting multiple containers within a single Pod.

## Applications
- **Log Shipping**: Deploying a sidecar to collect, transform, and forward application logs to a central logging system.
- **Proxying**: Running a service mesh proxy (e.g., Envoy) as a sidecar to handle network traffic routing, load balancing, and security policies.
- **Configuration Injection**: Using a sidecar to watch for and inject configuration data or secrets into the main application container.
- **Monitoring Agents**: Collecting application metrics and performance data for observability platforms.
- **Adapter Containers**: Normalizing or adapting the output of the main application to a standard API format.

## Related Concepts
- [[concepts/co-scheduling]]
- [[concepts/init-container]]
- [[concepts/pause-container]]
- Pod

## Related Entities

## Mentions in Source
- **Sidecar containers** (e.g., log shippers or proxies) run alongside the main process for auxiliary functions. — pods_c92b62
- Sidecars share the Pod’s network namespace and work via `localhost:<port>` to interact with the main container. — pods_c92b62