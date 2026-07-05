---
type: concept
title: "Mutual TLS (mTLS)"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]"
tags:
  - security
aliases:
  - mutual authentication TLS
---
# Mutual TLS (mTLS)

## Definition
Mutual TLS (mTLS) is an extension of the standard TLS protocol that requires both the client and the server to authenticate each other using TLS certificates. Unlike standard TLS where only the server presents a certificate to be validated by the client, mTLS implements bidirectional authentication.

## Key Characteristics
- **Bidirectional Authentication:** Both communicating parties must present and validate TLS certificates, ensuring mutual identity verification.
- **Certificate Pairs:** Each component typically possesses both a server certificate (used when it acts as a server) and a client certificate (used when it authenticates to another service).
- **Enhanced Security:** Provides strong authentication, encryption, and integrity for communications, protecting against unauthorized access and man-in-the-middle attacks.
- **Foundation for Secure Clusters:** In environments like Kubernetes, it is the fundamental mechanism securing all communication between control plane components (e.g., API server, kubelet, etcd).

## Applications
- Securing intra-cluster communication in Kubernetes between components like the API server, kubelet, and etcd.
- Implementing zero-trust network architectures where every service call must be authenticated.
- Securing internal microservice communication within a service mesh.

## Related Concepts
- [[concepts/tls-certificates]]
- [[tls-encryption]]
- [[concepts/certificate-authority-ca]]
- [[concepts/certificate-signing-request]]
- [[concepts/public-key-infrastructure]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/etcd]]

## Mentions in Source
- "To ensure these communications are secure and authenticated, Kubernetes uses TLS certificates and Mutual TLS (mTLS)." — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507