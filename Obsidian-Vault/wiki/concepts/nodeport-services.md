---
type: concept
title: "NodePort Services"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
tags:
  - networking
aliases:
  - NodePort service
  - Node Port Service
---
# NodePort Services

## Definition
A NodePort is a type of [[concepts/network-port-configuration]] in Kubernetes that exposes a Service on a static port on each node in the cluster. It makes the Service accessible from outside the cluster by forwarding traffic from a specific port on the node to the Service's backend pods.

## Key Characteristics
- Exposes a Service on a specific TCP or UDP port on all nodes in the cluster.
- The default port range is 30000–32767 (TCP).
- Requires that these ports are opened (allowed through firewalls) on all cluster nodes for external clients to connect.
- Traffic sent to `<NodeIP>:<NodePort>` is forwarded to the Service and then to its backing Pods.
- It is a simpler mechanism for external access compared to LoadBalancer type Services, which require cloud provider integration.

## Applications
- Development and testing environments where a cloud load balancer is not available or necessary.
- Exposing internal services for direct access from external clients or on-premises systems.
- Scenarios requiring direct, low-level network access to a service on a specific node.
- Bridging external traffic to internal cluster services when the cloud provider's LoadBalancer integration is not used.

## Related Concepts
- [[concepts/network-port-configuration]] — The broader concept of managing network ports and firewall rules, within which NodePort configuration is a specific application.
- [[concepts/serviceaccounts]] — While not directly related, ServiceAccounts are a core concept for managing identity for pods that might run the services exposed via NodePort.

## Related Entities
- [[entities/kubernetes]] — The container orchestration system for which NodePort is a core Service type.
- [[entities/kubectl]] — The command-line tool used to create and manage Services, including those of type NodePort.

## Mentions in Source
- "NodePort Services — kubernetes-installation-steps_e573e8"
- "30000–32767 (TCP) | External clients — kubernetes-installation-steps_e573e8"