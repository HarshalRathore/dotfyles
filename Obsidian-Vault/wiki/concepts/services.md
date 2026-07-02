---
type: concept
title: "Services"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "replication-controller-&-replicaset_285a2a"
tags:
  - networking
aliases:
  - K8s Services
---
# Services

## Definition
In Kubernetes, a Service is a logical abstraction that defines a stable network endpoint (IP address and DNS name) for accessing a set of Pods. It provides reliable load balancing and service discovery, ensuring that applications can communicate consistently regardless of changes to the underlying Pod instances.

## Key Characteristics
- Provides a stable, persistent IP address and DNS name for a dynamic set of Pods.
- Distributes traffic load across all healthy Pod replicas belonging to the Service.
- Decouples clients from Pod lifecycle; Pods can be scaled, updated, or replaced without affecting client access.
- Supports various networking models like ClusterIP (internal), NodePort, and LoadBalancer.
- Integrates with Kubernetes DNS (e.g., CoreDNS) for automatic service discovery within the cluster.

## Applications
- Exposing a microservice internally to other components within the cluster.
- Providing external access to an application via a LoadBalancer or NodePort.
- Implementing blue-green or canary deployments by routing traffic between different Pod versions.
- Enabling resilient communication patterns by abstracting the location of Pods.
- Facilitating horizontal scaling of stateless applications by serving as a frontend to a ReplicaSet or Deployment.

## Related Concepts
[[concepts/replicasets]]
[[concepts/replicationcontroller]]
[[concepts/services]]

## Related Entities
[[entities/kubernetes]]
[[entities/pods]]

## Mentions in Source
- "A Service fronts an RC/RS, distributing traffic across available Pod replicas by IP." — replication-controller-&-replicaset_285a2a
- "kubectl expose rs nginx-rs --port=80 --target-port=80 --name=nginx-svc" — replication-controller-&-replicaset_285a2a