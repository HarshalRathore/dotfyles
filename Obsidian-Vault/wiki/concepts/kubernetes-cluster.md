---
type: concept
title: "Kubernetes Cluster"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "introduction_804367"
tags:
  - deployment
aliases:
  - cluster
  - "self-managed Kubernetes cluster"
---
# Kubernetes Cluster

## Definition
A Kubernetes Cluster is the complete, functional deployment of the Kubernetes orchestration platform, composed of at least one master node (control plane) and multiple worker nodes working together to run containerized applications. It represents the integrated system being managed, where the master components govern the cluster's state and the worker nodes execute the actual application workloads.

## Key Characteristics
- **Core Architecture:** Consists of a control plane (master node(s)) and data plane (worker nodes).
- **Self-Managed Option:** Can be built from scratch ("self-managed") for maximum control, flexibility, and learning, as opposed to using managed services.
- **Distributed System:** Manages a pool of compute resources (nodes) to deploy, scale, and maintain containerized applications.
- **Minimum Viable Cluster:** A functional cluster can be established with a simple topology (e.g., 1 Master Node, 2 Worker Nodes).

## Applications
- **Educational Environments:** Building a cluster from scratch is a key exercise for learning Kubernetes internals and infrastructure provisioning.
- **Development & Testing:** Provides a dedicated environment for application development and testing before production deployment.
- **Production Workloads:** Serves as the underlying platform for deploying, scaling, and managing microservices and cloud-native applications in production.
- **Hybrid/Multi-Cloud Infrastructure:** Forms the portable runtime layer for applications across on-premises and various cloud providers.

## Related Concepts
*No specific related concepts listed for this term.*

## Related Entities
*No specific related entities listed for this term.*

## Mentions in Source
- "Your team chooses to build a self-managed Kubernetes cluster — for maximum flexibility and learning." — introduction_804367
- "For our cluster: 1x Master Node, 2x Worker Nodes" — introduction_804367