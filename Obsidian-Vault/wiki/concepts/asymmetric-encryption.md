---
type: concept
title: "Asymmetric Encryption"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "tls-certificates_c8ca8c"
tags:
  - tls
aliases:
  - Asymmetric Cryptography
  - "Public-key Encryption"
---
# Asymmetric Encryption

## Definition
Asymmetric encryption is a cryptographic method that uses a mathematically linked pair of keys: a public key, which can be shared openly, and a private key, which is kept secret. Data encrypted with the public key can only be decrypted with the corresponding private key, and vice versa.

## Key Characteristics
- Utilizes a key pair: a public key (shared openly) and a private key (kept confidential).
- Solves the key distribution problem inherent in symmetric encryption.
- Computationally more expensive than symmetric encryption.
- Used primarily for secure key exchange and digital signatures, not for bulk data encryption.


## Applications
- **TLS/SSL Handshake**: Securely exchanges the symmetric session key during the initial handshake (e.g., using RSA or ECDHE).
- **Digital Signatures**: Verifies the authenticity and integrity of a message or document.
- **Secure Email**: Encrypts messages and verifies sender identity.
- **Cryptocurrency**: Secures transactions and wallets.
- **SSH**: Provides secure remote access and command execution.


## Related Concepts
- [[concepts/symmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/digital-signature]]
- [[concepts/tls-certificates]]


## Related Entities
No related entities.


## Mentions in Source
- **Asymmetric Encryption**: - Utilizes a **key pair**: a public key (shared openly) and a private key (kept confidential). — [[concepts/tls-certificates]]
- Data encrypted with the public key can only be decrypted using the corresponding private key. — [[concepts/tls-certificates]]