---
type: concept
title: Network port configuration
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-installation-steps_e573e8]]'
tags:
- networking
aliases:
- Firewall port configuration
- Port opening
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Network port configuration
---
# Network port configuration

## Definition
Network port configuration refers to the method of managing and controlling specific TCP/UDP ports on network nodes to enable or restrict communication between software components, services, and external clients. In the context of Kubernetes, this involves opening essential ports to allow inter-component communication (like between the control plane and workers) while maintaining a secure environment through firewall rules or cloud security group policies.

## Key Characteristics
- Involves defining which ports are open or closed on a host or network boundary.
- Uses TCP and UDP protocols, with specific port numbers assigned to services (e.g., 6443 for the Kubernetes API server).
- Can be implemented via host-based firewalls (like `ufw` or `firewalld`) or cloud-based firewall rules (like AWS Security Groups).
- Balances functionality with security by following the principle of least privilege—only necessary ports are opened.
- Critical for enabling cluster components (API server, etcd, kubelet) to communicate and for exposing services (e.g., NodePort services).

## Applications
- Configuring firewalls or security groups to allow access to the Kubernetes API server (port 6443/TCP) for cluster management.
- Opening ports 2379–2380/TCP to enable etcd client and server communication for cluster state storage.
- Enabling port 10250/TCP for the kubelet API, allowing the control plane to communicate with node agents.
- Opening the NodePort range (30000–32767/TCP) to allow external access to services exposed via the NodePort mechanism.
- Implementing security in bare-metal clusters by configuring host firewalls to control node access.
- Managing network access on cloud platforms (e.g., AWS, GCP) through security groups or network ACLs to secure cluster nodes.

## Related Concepts
- [[concepts/host-security]]
- [[concepts/network-policies]]

## Related Entities
- kubernetes-api-server|Kubernetes API server]]
- [[entities/etcd]]
- [[entities/kubelet]]

## Mentions in Source
- "Kubernetes components communicate over specific TCP ports." — kubernetes-installation-steps_e573e8
- "On cloud platforms (like AWS), use Security Groups; on bare metal, configure your host firewall (e.g., ufw or firewalld)." — kubernetes-installation-steps_e573e8