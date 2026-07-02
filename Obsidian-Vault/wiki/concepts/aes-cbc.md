---
type: concept
title: "AES-CBC"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "env-configmaps-&-secrets_9586ac"
tags:
  - tls
aliases:
  - Advanced Encryption Standard Cipher Block Chaining
---
# AES-CBC

## Definition
AES-CBC (Advanced Encryption Standard in Cipher Block Chaining mode) is a symmetric encryption standard used for encrypting data at rest in Kubernetes. In the EncryptionConfiguration, AES-CBC is specified as a provider with a 32-byte key to encrypt Secrets, ensuring confidentiality by transforming plaintext into ciphertext. It is one of the recommended encryption methods for Kubernetes Secrets, providing secure storage when combined with proper key management. This standard is part of the broader encryption framework for protecting sensitive data in etcd.

## Key Characteristics
- Symmetric encryption algorithm combining AES block cipher with CBC mode
- Operates on fixed-size data blocks (128-bit) with a chaining mechanism for confidentiality
- Requires a 32-byte (256-bit) key for encryption/decryption operations
- Supported as an encryption provider within the Kubernetes EncryptionConfiguration resource
- Provides confidentiality for Secrets stored in etcd but does not ensure data integrity or authenticity
- Standardized approach to encryption at rest within Kubernetes clusters


## Applications
- Encrypting Kubernetes Secrets stored in etcd at rest
- Configuring data protection policies through EncryptionConfiguration
- Providing confidentiality for sensitive configuration data in Kubernetes
- Part of a defense-in-depth strategy for securing cluster data stores
- Combined with proper key rotation and management for secure operations


## Related Concepts
- [[concepts/encryption-at-rest]]
- [[concepts/encryptionconfiguration]]
- [[concepts/symmetric-encryption]]

## Related Entities


## Mentions in Source
- `providers: - aescbc: keys: - name: key1 secret: "<base64-32-byte-key>"` — env-configmaps-&-secrets_9586ac