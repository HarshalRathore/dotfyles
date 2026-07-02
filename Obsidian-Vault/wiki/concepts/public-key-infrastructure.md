---
type: concept
title: Public Key Infrastructure
created:
  - 2026-06-30
updated: "2026-07-02"
lifecycle: draft
base_confidence: 0.75
sources:
  - tls-certificates_c8ca8c
  - how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
tags:
  - term
---
## Description
Public Key Infrastructure (PKI) is a framework of policies, roles, and procedures used to create, manage, distribute, use, store, and revoke digital certificates and manage public-key encryption. It provides the trust model for secure communications, such as TLS, by offering a standardized method to verify the identities of entities. PKI encompasses the entire lifecycle of digital certificates, from creation to revocation, establishing a chain of trust through Certificate Authorities (CAs) that serve as the trust root. The system utilizes asymmetric encryption (public-key cryptography) for secure data exchange and identity verification, relying on standardized procedures for certificate generation, signing, validation, and revocation.

In the Kubernetes context, PKI is the overarching system that enables secure communication between cluster components through TLS certificates. This implementation includes a Certificate Authority as the trust root, various server and client certificates, and processes for certificate generation, signing, and distribution. PKI ensures mutual authentication and encryption within the cluster, forming the foundational infrastructure for implementing security protocols like TLS, securing web traffic, and enabling encrypted communications. The framework is applied in securing web traffic via TLS/SSL certificates, enabling secure email communication (S/MIME), code signing, document signing, securing internal communications and VPNs, and providing identity verification for devices and users in a network.

## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/certificate-generation]]
- [[concepts/asymmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/certificate-authority-ca]]
- [[concepts/certificate-signing-request]]
- [[concepts/trust-root]]
- [[concepts/digital-signature]]

## Related Entities
- [[entities/certificate-authority]]

## Mentions in Source
- **Public Key Infrastructure (PKI)** - PKI involves: 1. Generating a private key. 2. Creating a **Certificate Signing Request (CSR)** containing the public key. 3. Submitting the CSR to a CA for signing. 4. Receiving a signed certificate. — tls-certificates_c8ca8c
- PKI encompasses the entire process of certificate creation, validation, and management. — tls-certificates_c8ca8c

> **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
> - "
  - "
> - "
  - "
> - "
  - "
> - "