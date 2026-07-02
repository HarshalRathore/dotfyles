---
type: concept
title: "ECDHE"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "tls-certificates_c8ca8c"
tags:
  - tls
aliases:
  - ECDH key exchange
---
# ECDHE

## Definition
ECDHE (Elliptic Curve Diffie-Hellman Ephemeral) is a cryptographic key exchange protocol that uses elliptic curve cryptography to generate a shared secret over an insecure channel. Its critical "ephemeral" property means new, temporary keys are generated for each session, providing forward secrecy—the compromise of a long-term private key cannot be used to decrypt past session traffic.

## Key Characteristics
- **Forward Secrecy**: Each session uses a unique, temporary key pair; past sessions remain secure even if long-term keys are compromised later.
- **Elliptic Curve Cryptography (ECC)**: Leverages the mathematical properties of elliptic curves for efficient and strong key exchange with smaller key sizes compared to traditional methods like RSA.
- **Asymmetric Key Exchange**: Uses public-key cryptography principles where parties exchange public keys to derive a shared secret.
- **Performance**: Generally faster and more computationally efficient than RSA for equivalent security levels, making it suitable for modern TLS implementations.
- **Core TLS Component**: A fundamental part of the TLS handshake in modern secure communications, often used alongside or in preference to RSA for key exchange.

## Applications
- **TLS/SSL Handshakes**: Used to securely establish the session key during the TLS handshake for HTTPS, email (SMTP/IMAP), and other secure protocols.
- **Secure Messaging & Communication**: Employed in end-to-end encrypted messaging applications (e.g., Signal Protocol) to establish initial secure channels.
- **VPN Connections**: Utilized in some VPN protocols for secure key negotiation between client and server.
- **Modern Cryptographic Protocols**: A standard component in modern security protocols requiring both authentication and forward secrecy.

## Related Concepts
- [[concepts/asymmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/session-key]]

## Related Entities
*(No related entities listed)*

## Mentions in Source
- "Asymmetric (RSA/ECDHE) is expensive — tls-certificates_c8ca8c"
- "TLS hybrid approach: 1. Handshake: use asymmetric crypto once (or a few times) to securely exchange a small 256 bit AES key. — tls-certificates_c8ca8c"