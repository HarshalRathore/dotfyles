---
type: concept
title: "ServiceAccount"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - security
aliases:
  - SAC
---
# ServiceAccount

## Definition
ServiceAccount is a built-in mutating admission controller within Kubernetes. It automatically creates ServiceAccount objects and associated tokens for Pods during the object admission phase. Its primary function is to ensure every pod has a valid identity (via a ServiceAccount) and that the corresponding credentials (service account tokens) are properly mounted into the pod's containers.

## Key Characteristics
- Operates as a **Mutating Admission Controller**, meaning it can modify Pod objects as they are created.
- Automatically creates a ServiceAccount for a Pod if one is not specified.
- Manages the lifecycle and injection of service account tokens into Pods.
- Simplifies the process of providing an identity and credentials for Pod processes to interact with the Kubernetes API and other services.
- Works in conjunction with the `ServiceAccount` object and its associated secrets.

## Applications
- **Automating Pod Authentication:** Provides a default, secure identity for every pod without requiring manual configuration.
- **Simplifying RBAC Integration:** Pods use their auto-assigned ServiceAccount, which can be bound to specific Roles or ClusterRoles to grant precise permissions within the cluster.
- **Supporting Pod Security Policies:** ServiceAccount tokens are used in conjunction with security policies to control what a pod can do.
- **Managing Secrets:** Automates the creation and management of the token Secrets that grant access to the Kubernetes API.

## Related Concepts
- [[concepts/mutating-phase]]
- [[concepts/admission-controller]]
- [[concepts/serviceaccounts]]

## Related Entities

## Mentions in Source
- **ServiceAccount**: auto-creates ServiceAccounts and tokens for Pods. — admission-controllers_7667fc
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). — admission-controllers_7667fc