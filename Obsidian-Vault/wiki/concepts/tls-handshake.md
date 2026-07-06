---
type: concept
title: TLS Handshake
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/tls-certificates_c8ca8c]]'
tags:
- security
aliases:
- Key Exchange
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: TLS Handshake
---
# TLS Handshake

## Definition
The TLS handshake is the initial, standardized process by which a client and server establish a secure, authenticated, and encrypted communication channel. It is the foundation for secure protocols like HTTPS, enabling the negotiation of cryptographic parameters, the exchange of keys for symmetric encryption, and mutual or server-side authentication using digital certificates.

## Key Characteristics
- **Hybrid Cryptography:** Combines asymmetric encryption (e.g., RSA, ECDHE) for secure key exchange and authentication with symmetric encryption (e.g., AES) for efficient bulk data transfer.
- **Certificate-Based Authentication:** The server (and optionally the client) presents a digital certificate signed by a trusted Certificate Authority to prove its identity.
- **Negotiation Phase:** Both parties agree on the TLS protocol version, cipher suite (encryption, authentication, and key exchange algorithms), and other session parameters.
- **Forward Secrecy:** Modern handshakes often use ephemeral key exchange algorithms (like ECDHE) to ensure that the compromise of a long-term key does not compromise past session keys.
- **Session Resumption:** Mechanisms like session tickets or session IDs can be used to resume a previous session efficiently, bypassing the full handshake process.

## Applications
- **Web Browsing (HTTPS):** Securing the connection between a user's browser and web servers.
- **API Security:** Protecting data exchange between services, microservices, and client applications.
- **VPN Connections:** Establishing a secure tunnel for remote access to a private network.
- **Secure Messaging:** Underpinning end-to-end encryption in many messaging applications.
- **Database Connections:** Encrypting communication between applications and databases.

## Related Concepts
- [[concepts/asymmetric-encryption]]
- [[concepts/symmetric-encryption]]
- [[concepts/tls-certificates]]
- [[concepts/tls-certificates]]

## Related Entities
- [[entities/certificate-authority]]

## Mentions in Source
- " **Asymmetric Encryption in TLS Handshakes** - **How It Works**: 1. The server generates a public-private key pair. 2. The server shares its **public key** with the client. 3. The client encrypts its **symmetric key** with the server's public key and sends it back. 4. The server decrypts the symmetric key using its private key." — tls-certificates_c8ca8c