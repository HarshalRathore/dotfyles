---
type: concept
title: EncryptionConfiguration
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/env-configmaps-&-secrets_9586ac]]'
tags:
- security
aliases:
- K8s Encryption Configuration
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: EncryptionConfiguration
---
# EncryptionConfiguration

## Definition
EncryptionConfiguration is a Kubernetes API resource that defines how data at rest should be encrypted within a cluster. It specifies encryption providers (e.g., AES-CBC) and their associated keys for protecting sensitive resources like Secrets before they are stored in etcd. When mounted into the API server, it enables encryption at rest, ensuring that persistent data is secured.

## Key Characteristics
- Defines encryption providers and their keys for data-at-rest encryption.
- Targets specific Kubernetes resources (e.g., `secrets`, `configmaps`).
- Is implemented as a YAML configuration file (e.g., `enc-config.yaml`).
- Must be mounted and configured in the API server manifest (`kube-apiserver.yaml`).
- Supports multiple encryption providers in a chain (identity → AES-CBC → etc.).
- Essential for securing sensitive data stored in etcd.

## Applications
- Securing Kubernetes Secrets stored in etcd.
- Encrypting ConfigMaps and other custom resources.
- Enforcing organizational or regulatory compliance for data-at-rest security.
- Implementing a layered security strategy in Kubernetes clusters.

## Related Concepts
- [[concepts/encryption-at-rest]]
- [[concepts/aes-cbc]]
- [[concepts/secrets]]

## Related Entities
No related entities.

## Mentions in Source
- "Create `EncryptionConfiguration` (e.g., `enc-config.yaml`):" — env-configmaps-&-secrets_9586ac
- "Mount & Configure API-server (e.g., in `/etc/kubernetes/manifests/kube-apiserver.yaml`):" — env-configmaps-&-secrets_9586ac