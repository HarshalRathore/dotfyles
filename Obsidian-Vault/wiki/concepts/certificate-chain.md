---
type: concept
title: "Certificate Chain"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]"
tags:
  - tls
aliases:
  - Cert chain
---
# Certificate Chain

## Definition
A certificate chain is a hierarchical sequence of digital certificates where each certificate is signed by the next one in the series, culminating in a self-signed root certificate from a trusted Certificate Authority (CA). This structure establishes a verifiable path of trust from any leaf certificate (e.g., for a server or client) back to a trusted root.

## Key Characteristics
- **Hierarchical Structure:** Forms a tree-like hierarchy with the root CA certificate at the top.
- **Cryptographic Linkage:** Each certificate in the chain contains a digital signature from the certificate of the authority one level above it.
- **Trust Establishment:** Enables verification of a certificate's authenticity by tracing its lineage to a pre-trusted root certificate.
- **PKI Foundation:** Is a fundamental component of Public Key Infrastructure (PKI) systems.


## Applications
- **Kubernetes PKI:** Used to secure all cluster communications. The self-signed CA root (`ca.crt`) signs server certificates (e.g., `apiserver.crt`) and client certificates (e.g., `admin.crt`), allowing components to verify each other's identity.
- **TLS/SSL:** Secures web traffic. A server presents its certificate chain so a client can verify it's signed by a CA the client trusts.
- **Code Signing:** Software publishers sign their code, and the chain leads to a trusted root CA, assuring users of the code's origin.
- **Document Signing:** Digital signatures on documents can be verified against a chain of trust.


## Related Concepts
- [[concepts/certificate-authority-ca]]
- [[concepts/trust-root]]
- [[concepts/self-signed-certificates]]
- [[concepts/certificate-verification]]
- [[concepts/digital-signature]]
- [[concepts/public-key-infrastructure]]
- [[concepts/tls-certificates]]
- [[concepts/certificate-generation]]


## Related Entities
- [[entities/certificate-authority]]


## Mentions in Source
- **Certificate Authority (CA):**
   A Certificate Authority is a trusted entity that issues digital certificates. To become a CA, you first generate an RSA key pair (private and public key). Then you create a **root certificate**, which includes the CA's public key and other identity details. This root certificate is self-signed (i... — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507