---
type: entity
title: "Certificate Authority"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/tls-certificates_c8ca8c]]"
tags:
  - organization
aliases:
  - Trusted Third Party
---
# Certificate Authority

## Basic Information
- Type: organization
- Source: tls-certificates_c8ca8c

## Description
A Certificate Authority (CA) is a trusted third-party organization that is fundamental to the internet's security infrastructure. Its primary role is to verify the identity of entities, such as website owners, and then cryptographically sign digital certificates, such as [[concepts/tls-certificates]]. This signature provides proof that the certificate is legitimate and has been vetted. Web browsers and operating systems maintain lists of preloaded trusted CAs; if a certificate is signed by an unknown or untrusted CA, security warnings are triggered. In the [[concepts/public-key-infrastructure]] trust model, the CA acts as the foundational guarantor of identity, enabling clients to distinguish legitimate servers from impostors and preventing attacks like a [[concepts/man-in-the-middle-attack]].

## Related Entities
None

## Related Concepts
[[concepts/tls-certificates]]
[[concepts/public-key-infrastructure]]
[[concepts/trust]]
[[concepts/man-in-the-middle-attack]]

## Mentions in Source
- **CAs** are trusted third-party entities that verify domain ownership and issue certificates. — tls-certificates_c8ca8c
- Browsers verify: 1. If the certificate matches the domain. 2. If the CA is trusted (from a preloaded list). — tls-certificates_c8ca8c