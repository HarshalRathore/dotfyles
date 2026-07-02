---
type: concept
title: "Authentication (Kubernetes)"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - Kubernetes API Authentication
  - K8s API Authentication
---
# Authentication (Kubernetes)

## Definition
Authentication in Kubernetes is the process that determines **who** is allowed to interact with the API server. It is the initial step in the cluster's security pipeline, verifying the identity of a user or a machine (like a controller) before any further actions are considered.

## Key Characteristics
- **Handled by kube-apiserver:** All authentication mechanisms are processed and validated by the central API server component.
- **Does Not Manage Users:** Kubernetes itself does not have a built-in user database. User identities are managed externally or via the built-in `ServiceAccount` resource for pod workloads.
- **Multiple Pluggable Options:** Supports various authentication strategies, including:
    - X.509 client certificates
    - Static token files
    - Bootstrap tokens (for joining nodes)
    - Integration with external identity providers (e.g., OIDC, LDAP, Kerberos)
- **First Security Gate:** Successful authentication is required before the system proceeds to authorization checks (`who can do what?`).
- **Some Legacy Mechanisms Deprecated:** Simpler methods like static password files (`--basic-auth-file`) are deprecated and were removed in Kubernetes v1.19.


## Applications
- Securing access to the Kubernetes API for cluster administrators (e.g., using `kubectl`).
- Enabling programmatic access for CI/CD pipelines and automation tools (e.g., using client certificates or tokens).
- Issuing short-lived credentials for users via an external identity provider (OIDC).
- Managing internal workload identities automatically using `ServiceAccounts`.


## Related Concepts
- [[concepts/authorization-kubernetes]]
- [[concepts/serviceaccounts]]
- [[x-509-client-certificates]]
- [[concepts/human-vs-machine-users]]


## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- Determines: **Who can access the API server?** — 🔐-security-in-kubernetes_0a37d1
- Kubernetes doesn’t manage users directly (except **ServiceAccounts**). Options include: Static password file (`--basic-auth-file`) _(Deprecated since v1.19)_ — 🔐-security-in-kubernetes_0a37d1
- All authentication is handled by **kube-apiserver** — 🔐-security-in-kubernetes_0a37d1