---
type: concept
title: "Digital Signature"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/tls-certificates_c8ca8c]]"
tags:
  - security
aliases:
  - DS
  - Digital Sig
---
# Digital Signature

## Definition
A digital signature is a cryptographic method that provides authenticity and integrity for digital messages or documents. It leverages asymmetric encryption, where the signer creates a unique signature using their private key, and anyone with the corresponding public key can verify its authenticity.

## Key Characteristics
- **Uses Asymmetric Encryption:** Operates on a public-private key pair.
- **Provides Authentication:** Verifies the identity of the signer.
- **Ensures Integrity:** Proves the message or document has not been altered since signing.
- **Offers Non-Repudiation:** The signer cannot deny having signed the message.
- **Foundation of Trust in PKI:** Essential for establishing trust in digital certificates and systems like TLS.

## Applications
- **Securing TLS/SSL Connections:** Used by Certificate Authorities to sign certificates, verifying their legitimacy.
- **Code Signing:** Developers sign software to confirm its origin and integrity.
- **Document Signing:** Legally binding digital contracts, PDFs, and official documents.
- **Email Security (S/MIME):** Securing and authenticating email communications.
- **Blockchain and Cryptocurrency:** Securing transactions and proving ownership of assets.

## Related Concepts
- [[concepts/asymmetric-encryption]]
- [[concepts/tls-certificates]]
- [[concepts/public-key-infrastructure]]

## Related Entities
- [[concepts/certificate-authority-ca]]

## Mentions in Source
- "A certificate contains: - The server’s **public key**. - The **domain name**. - The CA's **digital signature**." — tls-certificates_c8ca8c