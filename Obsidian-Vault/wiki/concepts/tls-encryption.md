---
summary: "> **Source: sources/tls-certificates_c8ca8c** > - ' > - '"
type: concept
title: "Key Characteristics"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
  - "[[sources/tls-certificates_c8ca8c]]"
tags:
---
## Key Characteristics
- Provides encryption for data transmitted between network services.
- Ensures the identity of communicating parties through certificate-based authentication.
- Protects against eavesdropping, tampering, and message forgery.
- Uses a combination of asymmetric and symmetric encryption to balance security with performance.
- Is a mandatory security standard for securing the Kubernetes control plane and node communication.
- Establishes trust between communicating parties, preventing unauthorized access to sensitive data.
- Utilizes certificates (e.g., X.509) for establishing trust between components.

## Applications
- Securing all API server traffic in a Kubernetes cluster.
- Encrypting communication between `etcd` and the kube-apiserver.
- Protecting data exchanged between the kubelet and the kube-apiserver.
- Ensuring secure communication for cluster management components like kube-controller-manager and kube-scheduler.
- The standard for securing HTTPS, email, and other internet protocols.

## Related Concepts
- Internal Component Communication
- [[concepts/authentication-kubernetes]]
- [[concepts/authorization-kubernetes]]
- [[concepts/certificate-generation]]

## Related Entities
- [[entities/etcd]]
- [[entities/kubernetes]]

## Mentions in Source
- "
  - " — 🔐-security-in-kubernetes_0a37d1
- "
  - " — 🔐-security-in-kubernetes_0a37d1
> **Source: tls-certificates_c8ca8c**
> - "
  - "
> - "