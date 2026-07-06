---
type: concept
title: Encryption at Rest
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/env-configmaps-&-secrets_9586ac]]'
tags:
- security
aliases:
- Data at Rest Encryption
- Secret Encryption
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Encryption at Rest
---
# Encryption at Rest

## Definition
Encryption at Rest is the practice of encrypting data while it is stored on a persistent medium, such as disk or a database. In the context of Kubernetes, it specifically refers to encrypting sensitive resources like Secrets before they are written to the backing datastore (e.g., etcd). This prevents unauthorized access to the plaintext data by anyone who gains direct access to the storage layer.

## Key Characteristics
- Secures data in its stored state, not just during transit.
- Mitigates the risk of data exposure if the underlying storage (like etcd) is compromised.
- Requires explicit configuration and activation in a Kubernetes cluster.
- Employs specific encryption providers and algorithms (e.g., AES-CBC) to transform data.
- Involves an initial encryption of existing resources to ensure all current data is secured.

## Applications
- Protecting Kubernetes Secrets (API keys, passwords, certificates) stored in etcd.
- Meeting compliance and regulatory standards that mandate encryption of sensitive data at rest.
- Enhancing overall cluster security by adding a critical layer of defense for stored data.
- Securing configuration data and environment variables managed by the cluster.

## Related Concepts
- [[concepts/encryptionconfiguration]]
- [[concepts/aes-cbc]]
- [[concepts/secrets]]

## Related Entities

## Mentions in Source
- By default, etcd stores Secrets ==unencrypted== → anyone with etcd access reads plaintext. — env-configmaps-&-secrets_9586ac
- Enabling Encryption: 1. Check if enabled: ps aux | grep kube-apiserver | grep encryption-provider-config — env-configmaps-&-secrets_9586ac