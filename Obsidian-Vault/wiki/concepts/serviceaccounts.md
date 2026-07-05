---
type: concept
title: "ServiceAccounts"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - security
aliases:
  - K8s Service Account
  - K8s Service Accounts
---
# ServiceAccounts

## Definition
ServiceAccounts are Kubernetes resources that provide an identity for non-human entities (like pods and services) to authenticate with the Kubernetes API server and access other cluster resources. Unlike human users, ServiceAccounts are managed and created automatically by the Kubernetes control plane.

## Key Characteristics
- Used to identify and grant access permissions to machine users (workloads).
- Automatically managed and provisioned by the Kubernetes API server.
- Each namespace in a Kubernetes cluster has a default ServiceAccount.
- Tokens for a ServiceAccount are mounted into pods at a well-known path (`/var/run/secrets/kubernetes.io/serviceaccount/`).
- Permissions are typically controlled through Role-Based Access Control (RBAC) bindings.

## Applications
- Authenticating pods and containers to the Kubernetes API server for operations like reading ConfigMaps or Secrets.
- Granting permissions for specific workloads (e.g., a CI/CD pod) to manage resources within the cluster.
- Providing a stable identity for microservices running in a Kubernetes cluster to interact with internal APIs securely.
- Integrating with external identity providers for workload identity federation in cloud environments.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/rbac]]
- [[concepts/role-rbac]]
- [[concepts/rolebinding]]
- [[concepts/clusterrole]]
- [[concepts/clusterrolebinding]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Kubernetes doesn’t manage users directly (except **ServiceAccounts**)." — 🔐-security-in-kubernetes_0a37d1
- "Humans: Admins, Devs → Managed by K8s: ❌ No; Machines: Pods, Services → Managed by K8s: ✅ Yes (via `ServiceAccounts`)" — 🔐-security-in-kubernetes_0a37d1