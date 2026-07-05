---
type: concept
title: "envFrom"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/env-configmaps-&-secrets_9586ac]]"
tags:
  - deployment
aliases:
  - Environment From
  - EnvFrom Injection
---
# envFrom

## Definition
envFrom is a specification field in Kubernetes Pod and Container definitions that allows all keys from a ConfigMap or Secret to be bulk-injected as environment variables into a container. Instead of defining each environment variable individually using the `env` field, `envFrom` enables developers to reference an entire ConfigMap or Secret object and have all its key-value pairs automatically become environment variables within the container.

## Key Characteristics
- Supports bulk injection of all key-value pairs from a ConfigMap or Secret as environment variables
- Uses `configMapRef` to reference a ConfigMap source object
- Uses `secretRef` to reference a Secret source object
- Simplifies configuration management by eliminating the need to specify each variable individually
- Particularly useful for injecting configuration data or sensitive information at scale
- Works at the container level within Pod specifications

## Applications
- Bulk-loading application configuration from ConfigMaps without manually mapping each key
- Injecting sensitive credentials, API keys, or certificates from Secrets as environment variables
- Simplifying deployment manifests when dealing with numerous configuration parameters
- Streamlining environment-specific configurations across development, staging, and production environments
- Reducing boilerplate in Kubernetes manifests for applications with many environment variables

## Related Concepts
- [[concepts/configmaps]]
- [[concepts/secrets]]
- [[concepts/environment-variables-in-pods]]

## Related Entities
No related entities.

## Mentions in Source
- "envFrom: - configMapRef: name: app-config" — env-configmaps-&-secrets_9586ac
- "envFrom: - secretRef: name: app-secret" — env-configmaps-&-secrets_9586ac