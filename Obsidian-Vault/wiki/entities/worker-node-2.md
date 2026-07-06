---
type: entity
title: Worker Node 2
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/main-kubernetes-components_82b036]]'
tags:
- other
aliases:
- Worker Node
- worker-node-2
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Worker Node 2
---
## Description
worker-node-2 is one of two EC2 instances provisioned to run application workloads in a self-managed Kubernetes cluster. It is the second worker node, sharing identical specifications and role with worker-node-1, and together they form the worker node tier responsible for executing pods and containers. The instance is configured with the Ubuntu 20.04 LTS operating system and has a recommended instance type of t2.large for better performance, providing 2 vCPUs and 8GB of RAM. Its creation completes the initial three-node infrastructure (one master node and two worker nodes) for the Kubernetes demonstration. As a worker node, it runs three essential processes: a [[concepts/container-runtime]] (e.g., [[entities/docker]], [[entities/containerd]]) to run containers, [[entities/kubelet]] to manage pod scheduling and resource allocation, and [[concepts/kube-proxy]] to forward requests from services to pods, ensuring efficient communication. This node is managed by the master node and forms part of the compute foundation where actual workloads execute.

## Related Entities
- [[entities/ec2]]
- [[entities/ubuntu-server]]
- kubernetes
- [[entities/ssh]]
- [[entities/iam]]
- [[entities/aws]]
- [[entities/docker]]

## Related Concepts
- [[concepts/worker-node]]
- [[concepts/container-runtime]]
- [[entities/kubelet]]
- [[concepts/control-plane-node]]
- [[concepts/disable-swap]]
- [[concepts/prerequisites-verification]]
- [[concepts/network-port-configuration]]
- [[concepts/security-groups]]
- [[concepts/kube-proxy]]

## Mentions in Source
> **Source: introduction_804367**
> - "Name Your Servers in AWS Console: master-node, worker-node-1, worker-node-2"
> - "Launch EC2 Instances (Worker Nodes): 2x Instances, OS: Ubuntu 20.04 LTS, Instance Type: t2.large (better, 2 CPU, 8GB RAM) (or t2.medium if saving cost)"

> **Source: main-kubernetes-components_82b036**
> - "Worker Nodes - Run application containers containing pods."