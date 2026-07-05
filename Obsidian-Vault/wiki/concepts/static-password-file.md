---
type: concept
title: "Static Password File"
visibility: internal
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - security
aliases:
  - Static Password Authentication
  - Deprecated Basic Auth File
---
# Static Password File

## Definition
A static password file is a deprecated method for authenticating users to the [[entities/kubernetes]] API server. It uses a comma-separated value (CSV) file containing plaintext credentials (passwords, usernames, and user IDs) passed to the API server via the `--basic-auth-file` flag. This method was removed in Kubernetes v1.19 due to significant security limitations.

## Key Characteristics
- **Deprecated:** Officially deprecated and removed from Kubernetes since version v1.19.
- **Mechanism:** Uses a simple CSV file format with three fields: password, username, and user ID.
- **Configuration:** Enabled on the API server using the `--basic-auth-file` command-line flag.
- **Security:** Lacks modern security features; relies on basic authentication which transmits credentials in an insecure manner unless combined with TLS.
- **Scope:** Provides cluster-wide access for a given user; authorization is handled separately (e.g., via ABAC or RBAC).

## Applications
- **Local Learning & Testing:** Suitable for non-production environments where simplicity is prioritized for learning basic Kubernetes authentication concepts.
- **Legacy Systems:** Used in older clusters that have not yet migrated to more secure authentication methods.
- **Simple Tooling:** Illustrates a straightforward authentication mechanism for scripts or tools interacting with the API.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/static-token-file]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- Static password file (`--basic-auth-file`) _(Deprecated since v1.19)_ — 🔐-security-in-kubernetes_0a37d1
- Use only for local learning or legacy setups — 🔐-security-in-kubernetes_0a37d1