---
summary: "Secrets are Kubernetes objects specifically for storing sensitive information like passwords, tokens, and certificates. This makes them a secure alternative to [[concepts/configmaps]]"
  - "env-configmaps-&-secrets_9586ac"
tags:
---
## Description
Secrets are Kubernetes objects specifically for storing sensitive information like passwords, tokens, and certificates. This makes them a secure alternative to [[concepts/configmaps]], which store plaintext and are unsuitable for confidential data. Secret data is stored in a base64-encoded format by default, but this encoding is not a security measure; for robust protection, encrypting Secrets at rest within etcd storage is recommended. They can be created either imperatively using `kubectl` or declaratively via YAML manifests. Pods access Secrets by injecting them as environment variables or mounting them as files.

## Related Concepts
- [[concepts/configmaps]]
- Base64 Encoding
- Configuration Management
- Encryption at Rest
- EncryptionConfiguration

## Related Entities
- [[entities/pods]]
- [[entities/kubernetes]]
- [[entities/etcd]]
- [[entities/kubectl]]

## Mentions in Source
> **Source: main-kubernetes-components_82b036**
> - "
  - "
> - "
  - "

> **Source: env-configmaps-&-secrets_9586ac**
> - "
  - "
> - "