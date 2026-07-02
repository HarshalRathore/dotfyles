---
type: concept
title: "Trust"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "tls-certificates_c8ca8c"
tags:
  - security
aliases:
  - Confidence in Identity
---
# Trust

## Definition
In the context of Transport Layer Security (TLS) and Public Key Infrastructure (PKI), **trust** refers to the confidence a client (e.g., a web browser) has in the identity presented by a server. This trust is established and maintained through a verifiable chain of cryptographic certificates. If the chain is intact and each link is trusted, the communication channel is considered secure, preventing impersonation and eavesdropping attacks.

## Key Characteristics
- **Hierarchical:** Trust is typically anchored in a set of trusted root Certificate Authorities (CAs) whose certificates are pre-installed in client software (like browsers or operating systems).
- **Chain-based:** Trust flows from a trusted root CA down through intermediate CAs to the end-entity certificate (e.g., a server's certificate). Each certificate is digitally signed by the issuer above it.
- **Conditional:** The trust in a specific server connection is conditional upon the successful verification of its entire certificate chain against the client's trusted root store.
- **Essential for Security:** It is the foundational principle that enables TLS to authenticate server identities and secure internet communications against Man-in-the-Middle (MITM) attacks.

## Applications
- **Securing Web Browsing (HTTPS):** Browsers trust a website's identity by verifying its TLS certificate against a chain of trust rooted in globally trusted CAs.
- **Internal & Private PKI:** Organizations establish private chains of trust (using their own CA) to secure internal services, APIs, and device communication.
- **Kubernetes API Server Security:** Components like `kubectl` establish a trust relationship with the Kubernetes API server by verifying its TLS certificate, often signed by a cluster CA.
- **Mutual TLS (mTLS):** In service meshes and microservices, both client and server verify each other's certificate, establishing mutual trust.

## Related Concepts
- [[concepts/certificate-authority-ca]]
- [[concepts/tls-certificates]]
- [[concepts/man-in-the-middle-attack]]
- [[concepts/public-key-infrastructure]]
- [[concepts/digital-signature]]
- [[concepts/tls-handshake]]

## Related Entities
- No related entities.

## Mentions in Source
- "TLS also helps in establishing trust between the communicating parties." — tls-certificates_c8ca8c
- "Browsers verify: ... 2. If the CA is trusted (from a preloaded list)." — tls-certificates_c8ca8c