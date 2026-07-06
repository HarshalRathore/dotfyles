---
summary: RSA is an asymmetric cryptographic algorithm whose security relies on the practical difficulty of factoring the product of two large prime numbers. It is significantly slower than symmetric enc...
type: concept
title: Rsa
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/tls-certificates_c8ca8c]]'
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
tags: []
category: concepts
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
RSA is an asymmetric cryptographic algorithm whose security relies on the practical difficulty of factoring the product of two large prime numbers. It is significantly slower than symmetric encryption and has a limited data capacity per operation, making it unsuitable for bulk data encryption. Consequently, its primary role in protocols like TLS is for the secure exchange of a symmetric session key. Beyond key exchange, RSA is fundamental for providing digital signatures, which verify authenticity and integrity. In infrastructure contexts such as Kubernetes cluster setup, RSA key pairs are generated to form the basis for Certificate Authorities (CAs) and component certificates, with private keys signing CSRs and public keys embedded for verification.

## Related Concepts
- [[concepts/asymmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/symmetric-encryption]]
- [[concepts/digital-signature]]
- [[concepts/public-key-infrastructure]]
- [[concepts/certificate-signing-request]]
- [[concepts/certificate-generation]]

## Related Entities
- [[entities/certificate-authority]]

## Mentions in Source
> **Source: tls-certificates_c8ca8c**
> - "
  - "
> - "
  - "

> **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
> - "
  - "/CN=kubernetes-ca"**Private key**
bash
openssl genrsa -out admin.key 2048
