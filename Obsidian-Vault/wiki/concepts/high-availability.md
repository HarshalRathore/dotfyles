---
type: concept
title: "High Availability"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "replication-controller-&-replicaset_285a2a"
tags:
  - deployment
aliases:
  - fault tolerance
---
# High Availability

## Definition
High Availability (HA) is a system design principle and attribute that ensures a specified level of operational performance, usually uptime, for a higher-than-normal period. In the context of Kubernetes, High Availability refers to the configuration of the cluster and its applications to withstand and automatically recover from failures of individual components (like nodes or Pods), thereby minimizing or eliminating downtime.

## Key Characteristics
- **Redundancy:** Multiple instances (replicas) of application Pods or critical control plane components are deployed across the cluster.
- **Automated Recovery:** Mechanisms automatically detect failures (e.g., a crashed Pod, a failed node) and recreate or reschedule necessary components to restore the desired state.
- **Fault Isolation:** Failures are contained to their smallest possible scope (e.g., a single Pod or node) without causing a cascading failure of the entire system.
- **Scalability:** The architecture can handle increased load by distributing traffic across multiple available replicas.
- **Continuous Operation:** The system is designed to remain accessible and operational for users even during maintenance or partial outages.

## Applications
High Availability is critical for production-grade systems where downtime has significant consequences. Key applications include:
- **Production Microservices:** Ensuring end-user applications (e.g., web stores, payment services) remain online despite underlying infrastructure issues.
- **Critical Backend Services:** Maintaining availability for databases, message queues, and API gateways that other services depend on.
- **Disaster Recovery:** Distributing replicas across availability zones or regions to survive site-level failures.
- **Control Plane Resilience:** Running multiple instances of Kubernetes control plane components (API server, scheduler, controller manager) to prevent a single point of failure for cluster management.

## Related Concepts
- ReplicationController
- ReplicaSet
- Self-Healing

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]

## Mentions in Source
- "Applications running in Pods can crash or a node can go down. Without RC/RS, those Pods wouldn't be replaced, leading to downtime. RCs/RSs automatically recreate Pods to maintain the desired count — Replication Controller & ReplicaSet"