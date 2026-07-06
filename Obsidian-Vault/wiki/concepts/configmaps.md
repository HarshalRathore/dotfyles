---
summary: ConfigMaps centralize plaintext configuration for Kubernetes Pods, storing it as key-value pairs that can represent entire configuration files or literal values. They are designed for non-sensi...
type: concept
title: Configmaps
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/main-kubernetes-components_82b036]]'
- '[[sources/env-configmaps-&-secrets_9586ac]]'
tags: []
category: concepts
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
ConfigMaps centralize plaintext configuration for Kubernetes Pods, storing it as key-value pairs that can represent entire configuration files or literal values. They are designed for non-sensitive data, with sensitive information intended for use with Secrets. Configuration can be injected into containers either as environment variables (using mechanisms like `envFrom`) or as mounted files in a volume, providing flexibility for different application needs. ConfigMaps can be created imperatively with commands like `kubectl create configmap` or declaratively via YAML files, enabling portable and consistent management of settings across development, staging, and production environments without modifying the container image itself.

## Related Concepts
- [[concepts/secrets]]
- Pods
- Configuration Management
- Environment Variables in Pods
- [[concepts/envfrom]]
- Volume-mounted files

## Related Entities
- [[entities/kubernetes]]
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