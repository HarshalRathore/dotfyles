---
type: concept
title: Certificate Verification
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
tags:
- tls
aliases:
- SSL/TLS verification
- Cert verification
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Certificate Verification
---
# Certificate Verification

## Definition
Certificate verification is the process of validating the authenticity and integrity of digital certificates to establish trust in a communication partner. In the Kubernetes TLS setup described in the source, verification occurs at multiple levels: clients verify server certificates against trusted root CAs, and servers verify client certificates in mutual TLS (mTLS) scenarios. The verification process involves checking the certificate's digital signature against the issuer's public key, validating certificate chains, checking expiration dates, and confirming that the certificate's Common Name (CN) and Subject Alternative Names (SANs) match the connecting entity.

## Key Characteristics
- Validates the digital signature of a certificate using the issuing CA's public key.
- Checks the certificate's expiration date to ensure it is currently valid.
- Confirms the certificate's Subject Alternative Names (SANs) or Common Name (CN) match the identity of the connecting entity.
- Involves validating the entire certificate chain back to a trusted root CA.
- Essential for preventing impersonation and man-in-the-middle attacks in secure communications.
- Required for establishing trust in both standard TLS (server authentication) and mutual TLS (mTLS, server and client authentication).


## Applications
- **Kubernetes Cluster Security:** Used to authenticate and secure communications between all components, including the API server, kubelets, scheduler, controller manager, and pods.
- **Web Browsers:** Clients verify server certificates to establish secure HTTPS connections to websites.
- **Microservices Communication:** Services verify each other's certificates to ensure secure internal communication within a service mesh.
- **API Authentication:** Clients validate API server certificates to trust they are communicating with the legitimate server.
- **Code Signing:** Operating systems and software runtimes verify the certificates of signed executables to ensure integrity and publisher identity.


## Related Concepts
- [[concepts/certificate-authority-ca]]
- [[concepts/certificate-chain]]
- [[concepts/client-certificate]]
- [[concepts/server-certificate]]
- [[concepts/tls-certificates]]
- [[concepts/trust-root]]


## Related Entities
No related entities.


## Mentions in Source
- **Client Certificate:** Clients (like browsers or systems) have a list of trusted **root certificates** from different CAs. When a client receives a server certificate, it:
    1.Uses the public key of the issuing CA (from the root certificate) to verify the server certificate’s digital signature.
    2.Checks the hash and other f... — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507