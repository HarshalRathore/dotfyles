---
type: concept
title: X.509 client certificates
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/🔐-security-in-kubernetes_0a37d1]]'
tags:
- tls
aliases:
- X.509 Client Certificate Authentication
- Client Cert Auth
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: X.509 client certificates
---
# X.509 client certificates

## Definition
X.509 client certificates are a public key infrastructure (PKI) based authentication mechanism used to verify the identity of clients, such as users or system components, when they communicate with a service endpoint. In the context of Kubernetes, they are a fundamental method for authenticating requests to the API server.

## Key Characteristics
- Based on the X.509 standard for public key certificates.
- Use asymmetric cryptography (public/private key pairs) for secure authentication.
- Provide strong, cryptographic identity verification for clients.
- Typically issued by a trusted Certificate Authority (CA) recognized by the API server.
- Can be used to authenticate both human users and automated service accounts.
- Enable secure communication and identity propagation across distributed systems.

## Applications
- Authenticating administrative access to the Kubernetes API server.
- Enabling service-to-service authentication within a cluster using client certificates.
- Securing access to internal services protected by mutual TLS (mTLS).
- Providing identity for external systems integrating with the Kubernetes control plane.
- Used in conjunction with tools like `kubectl` to configure secure user contexts.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/tls-certificates]]
- [[concepts/rbac]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Options include: ... X.509 client certificates" — 🔐-security-in-kubernetes_0a37d1