---
type: concept
title: "Host Security"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - security
aliases:
  - Cluster Access Security
  - Infrastructure Security
---
# Host Security

## Definition
Host security in the context of Kubernetes refers to securing the underlying infrastructure, both physical and cloud-based, on which the cluster nodes operate. It forms the foundational layer of a cluster's defense, as compromise of a host directly jeopardizes the entire cluster.

## Key Characteristics
- **Foundational Principle**: It is the base layer of Kubernetes cluster security; if the host is compromised, the entire cluster is at risk.
- **Infrastructure Focus**: Covers both physical hardware and virtualized/cloud infrastructure.
- **SSH Hardening**: Emphasizes specific measures like disabling root access, disabling password-based login, and enabling SSH-key based authentication only.
- **Node Protection**: Aims to protect the individual nodes that constitute the cluster.

## Applications
- **Secure Cluster Deployment**: Hardening host operating systems and network configurations before and during cluster setup.
- **Cloud Infrastructure Security**: Configuring security groups, IAM roles, and network policies for cloud-based nodes.
- **Bare-Metal Server Security**: Implementing physical access controls and BIOS/UEFI security for on-premises deployments.
- **Node Provisioning**: Integrating host security checks into automated node provisioning pipelines.

## Related Concepts
- SSH hardening
- [[concepts/authentication-kubernetes]]
- [[concepts/rbac]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- Ensure **SSH access** is secure: ❌ Disable root access, ❌ Disable password-based login, ✅ Enable SSH-key based authentication only — 🔐-security-in-kubernetes_0a37d1
- Secure the **infrastructure** (physical or cloud). If the host is compromised, so is the entire cluster. — 🔐-security-in-kubernetes_0a37d1