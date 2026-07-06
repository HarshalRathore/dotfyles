---
type: concept
title: session key
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/tls-certificates_c8ca8c]]'
tags:
- tls
aliases:
- symmetric session key
- bulk encryption key
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: session key
---
# session key

## Definition
A session key is a temporary, symmetric cryptographic key generated for the exclusive duration of a single communication session. It acts as the critical bridge in hybrid cryptographic protocols like TLS, enabling the efficient encryption of bulk data after a secure key exchange.

## Key Characteristics
- **Temporary**: Generated and valid only for the lifetime of a specific session, minimizing exposure if compromised.
- **Symmetric**: Used with efficient symmetric encryption algorithms (like AES) for fast data encryption and decryption.
- **Hybrid Role**: Facilitates a hybrid security approach where slow, expensive asymmetric cryptography is used only once to securely exchange the key, and the fast symmetric key is then used for bulk data transfer.
- **Secure Exchange**: The session key itself is securely established using asymmetric methods (e.g., RSA encryption or ECDHE key agreement) during the handshake phase.
- **Performance**: Enables high-throughput encryption of application data, making secure communication practical at scale.

## Applications
- **TLS/SSL Protocol**: The primary application, where a session key (often a 256-bit AES key) is generated during the handshake to encrypt all subsequent HTTP traffic in an HTTPS connection.
- **Encrypted Communication Sessions**: Used in various secure messaging and communication protocols to encrypt the message stream for the duration of a chat or call.
- **VPN Connections**: Employed to encrypt tunnel traffic for the duration of a user's VPN session.
- **Database Connections**: Sometimes used to encrypt data in transit between an application and a database for a single connection session.

## Related Concepts
- [[concepts/symmetric-encryption]]
- [[concepts/asymmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/aes-256-gcm]]
- [[concepts/rsa]]
- [[concepts/ecdhe]]

## Related Entities
No related entities.

## Mentions in Source
- Q: Why does TLS use a symmetric “session key” for bulk data instead of encrypting all application data directly with the server’s public key? — tls-certificates_c8ca8c
- 1. Handshake: use asymmetric crypto once (or a few times) to securely exchange a small 256 bit AES key. — tls-certificates_c8ca8c