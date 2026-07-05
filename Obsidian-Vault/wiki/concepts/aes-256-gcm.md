---
type: concept
title: "AES-256-GCM"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/tls-certificates_c8ca8c]]"
tags:
  - tls
aliases:
  - GCM mode of AES
---
# AES-256-GCM

## Definition
AES-256-GCM (Advanced Encryption Standard with 256-bit key in Galois/Counter Mode) is a standardized symmetric encryption algorithm and authenticated encryption mode of operation. It provides both data confidentiality and integrity verification, making it a cornerstone of modern secure communication protocols.

## Key Characteristics
- Combines the AES-256 block cipher with the GCM authenticated encryption mode.
- Provides both confidentiality (encryption) and data integrity/authenticity in a single, efficient pass.
- Uses a 256-bit key, offering a high level of security against brute-force attacks.
- Operates on 16-byte (128-bit) data blocks.
- Features high performance, capable of throughput speeds around 2000 MB/s on modern hardware.
- Is the recommended cipher suite for the TLS 1.3 protocol.


## Applications
- **Bulk data encryption in TLS:** Used as the fast, symmetric encryption phase in the hybrid TLS approach for securing web traffic and API communications.
- **Secure communication protocols:** Implemented in various protocols beyond TLS, such as IPsec, SSH, and WireGuard.
- **Data-at-rest encryption:** Employed for efficiently encrypting stored data in databases, file systems, and cloud storage.
- **Real-time data streams:** Suitable for encrypting continuous data streams due to its high throughput and low latency.


## Related Concepts
- [[concepts/symmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/session-key]]

## Related Entities


## Mentions in Source
- "AES-256-GCM encrypts in 16 B blocks at ≈0.5 ms per MiB → ~2 000 MB/s throughput." — tls-certificates_c8ca8c
- "TLS hybrid approach: 1. Handshake: use asymmetric crypto once (or a few times) to securely exchange a small 256 bit AES key. 2. Data phase: switch to AES-256-GCM for “bulk” encryption at gigabytes-per-second speeds." — tls-certificates_c8ca8c