---
type: concept
title: "Human vs Machine Users"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - deployment
aliases:
  - K8s User Types
  - User Types in Kubernetes
---
# Human vs Machine Users

## Definition
A classification within Kubernetes that distinguishes between **human users** (e.g., administrators, developers) and **machine users** (e.g., pods, services) based on how they authenticate and are managed within the cluster.

## Key Characteristics
- **Human Users**: Are not managed directly by Kubernetes; their identity and authentication must be provided by an external system (e.g., an identity provider, LDAP).
- **Machine Users**: Are managed natively by Kubernetes through `ServiceAccounts`, which provide identity for in-cluster processes.
- The distinction dictates the authentication mechanism: humans use external identity providers, while machines use Kubernetes-native credentials.
- This separation is fundamental for designing proper authorization policies (e.g., RBAC) and security strategies.

## Applications
- **Security Policy Design**: Helps administrators define different access controls and authentication requirements for interactive human users versus automated machine workloads.
- **Authentication Configuration**: Guides the setup of external identity providers (for humans) and the use of built-in `ServiceAccounts` (for machines).
- **Audit and Compliance**: Allows for differentiated logging and monitoring based on the user type.
- **Cluster Access Management**: Informs strategies for granting temporary or limited access to humans (e.g., via short-lived tokens) versus persistent identities for services.

## Related Concepts
- [[concepts/serviceaccounts]]
- [[concepts/authentication-kubernetes]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "|User Type|Example|Managed by K8s|" — 🔐-security-in-kubernetes_0a37d1
- "|Humans|Admins, Devs|❌ No|" — 🔐-security-in-kubernetes_0a37d1
- "|Machines|Pods, Services|✅ Yes (via `ServiceAccounts`)|" — 🔐-security-in-kubernetes_0a37d1