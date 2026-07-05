---
summary: "Security Groups act as instance-level firewalls within a Virtual Private Cloud (VPC), governing both ingress and egress traffic through rules evaluated by protocol, port, and IP/CIDR. For Kuber..."
type: concept
title: "Security Groups"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
  - "[[sources/introduction_804367]]"
tags:
---
## Description
Security Groups act as instance-level firewalls within a Virtual Private Cloud (VPC), governing both ingress and egress traffic through rules evaluated by protocol, port, and IP/CIDR. For Kubernetes clusters, they are crucial for security, ensuring internal node communication is unrestricted while external access, such as SSH for administration, is properly controlled. Changes to rules apply immediately to all associated instances, supporting scenarios from managing control-plane ports (6443, 2379-2380) to isolating database tiers and restricting web application access. They can be referenced by other AWS services to enforce network policies across inter-service communication.

## Related Concepts
- cloud-networking
- [[concepts/network-port-configuration]]
- [[concepts/network-policies]]
- [[concepts/network-port-configuration]]
- [[tls-encryption]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubeadm]]
- [[entities/kubectl]]
- [[entities/ec2]]
- [[entities/aws]]
- [[entities/ssh]]

## Mentions in Source
> **Source: kubernetes-installation-steps_e573e8**
> - "
  - "
> - "
  - "

> **Source: introduction_804367**
> - "
  - "
> - "