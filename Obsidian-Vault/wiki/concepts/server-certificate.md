---
type: concept
title: Server Certificate
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
tags:
- tls
aliases:
- TLS Server Certificate
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Server Certificate
---
# Server Certificate

## Definition
A server certificate is a digital credential used by a network server to cryptographically prove its identity to connecting clients. During a TLS handshake, the server presents its certificate to clients, allowing them to verify the server's identity against the certificate's information and validate it through a chain of trust anchored to a trusted Certificate Authority (CA). This mechanism is fundamental for establishing secure, encrypted communication channels (like HTTPS) and preventing impersonation attacks.

## Key Characteristics
- **Identity Binding:** It cryptographically binds a public key to an identity, typically a DNS name (e.g., `kubernetes.default`) or an IP address, specified in its Subject Alternative Names (SANs) field.
- **Issued by a Certificate Authority (CA):** A valid server certificate is signed by a trusted CA, creating a chain of trust. Clients trust the certificate because they already trust the CA.
- **Contains a Public/Private Key Pair:** The certificate includes the server's public key. The corresponding private key is kept secret by the server and is used during the TLS handshake to prove ownership of the certificate.
- **Crucial for TLS/SSL:** It is an essential component for implementing Transport Layer Security (TLS), enabling secure web browsing (HTTPS), secure API calls, and encrypted database connections.
- **Enables Server Authentication:** Its primary function is to allow a client to authenticate that it is communicating with the legitimate intended server and not an impostor.

## Applications
- **Securing Web Traffic (HTTPS):** Used by web servers to authenticate themselves to browsers, encrypting all data exchanged between them.
- **Kubernetes API Server Security:** In Kubernetes, the API server presents its server certificate (e.g., `apiserver.crt`) to clients like `kubelet`, `kube-controller-manager`, and `kubectl` to secure all control plane communication. The certificate's SANs must include all valid DNS names and IP addresses (like `kubernetes`, `kubernetes.default`, and the service ClusterIP) to ensure client verification succeeds regardless of the address used.
- **Securing Service-to-Service Communication:** Used in microservices architectures where services authenticate each other via TLS.
- **Securing Database Connections:** Databases like etcd use server certificates to authenticate themselves to clients, ensuring data confidentiality and integrity.

## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/subject-alternative-name-san]]
- [[concepts/certificate-generation]]
- [[concepts/tls-handshake]]
- [[concepts/public-key-infrastructure]]

## Related Entities
No related entities.

## Mentions in Source
- Server certificates (public key `.crt`, private key `.key`): — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
- API Server: `apiserver.crt` / `apiserver.key` — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507