---
type: concept
title: "Static Token File"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - Static Token Authentication
---
# Static Token File

## Definition
A static token file is a method for authenticating users to the Kubernetes API server by using a file containing pre-defined tokens. This token file is passed to the kube-apiserver via the `--token-auth-file` flag, enabling simple, token-based authentication.

## Key Characteristics
- Provides a simple, file-based authentication mechanism for the Kubernetes API.
- Requires the kube-apiserver to be started with the `--token-auth-file` flag pointing to the token file.
- The token file contains a list of pre-generated tokens, often associated with usernames or groups.
- Considered a basic or legacy authentication method, often used in simple or development environments.
- Requires careful management and security of the token file to prevent compromise.

## Applications
- Basic authentication for Kubernetes API access in non-production or development clusters.
- Scenarios where integrated external identity providers or complex certificate infrastructures are not required.
- Simple scripting or automation workflows that need to authenticate with the API server.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/static-password-file]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Static token file (`--token-auth-file`)" — 🔐-security-in-kubernetes_0a37d1
- "Options include: ... Static token file (`--token-auth-file`)" — 🔐-security-in-kubernetes_0a37d1