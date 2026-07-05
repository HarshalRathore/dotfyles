---
type: concept
title: "Service discovery"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/microservices-demo-projects_ac9b1f]]"
tags:
  - networking
aliases:
  - service registry
  - SD
---
# Service discovery

## Definition
Service discovery is the automatic process by which services in a distributed system locate and communicate with each other's network endpoints. It eliminates the need for hardcoded IP addresses or hostnames, allowing services to be dynamically instantiated, scaled, and moved while remaining accessible to their dependencies. In environments like Kubernetes, this is typically implemented via a DNS-based system where each service receives a stable, resolvable name.

## Key Characteristics
- **Dynamic Endpoint Resolution:** Services find each other by name at runtime, not via static configuration.
- **Decoupling:** Consumers are not coupled to specific network locations of providers, enabling independent scaling and deployment.
- **DNS Integration:** In Kubernetes, service discovery is tightly integrated with the cluster's DNS service (e.g., CoreDNS), providing a `<service-name>.<namespace>.svc.cluster.local` naming scheme.
- **Reduces Configuration Overhead:** Manages and automates the tracking of service instances, reducing manual configuration errors.
- **Enables Fault Tolerance:** Supports patterns like load balancing and retry logic by providing a list of healthy endpoints.

## Applications
Service discovery is a foundational pattern for building scalable and resilient microservices architectures. It is essential in container orchestration platforms like Kubernetes, where the number and location of service instances are constantly changing. Developers practice implementing and leveraging service discovery when deploying multi-tier applications, such as the sample microservices projects (eShopOnContainers, Online Boutique, Sock Shop), to manage communication between the 6-10 constituent services.

## Related Concepts
- [[concepts/microservices-architecture]]
- [[concepts/container-dns-resolution]]
- [[concepts/kubernetes-practice]]
- [[concepts/grpc]]

## Related Entities
- Kubernetes
- [[entities/coredns]]
- [[entities/helm]]
- [[entities/microsoft’s-eshop-reference-application]]
- [[entities/google’s-online-boutique]]
- [[entities/weaveworks’-sock-shop]]

## Mentions in Source
- "They strike a balance between simplicity and scale (more complex than a basic 2-tier app but not overwhelmingly large) and are ideal for practicing containerization, service discovery, config management (env vars), and monitoring on Kubernetes." — microservices-demo-projects_ac9b1f