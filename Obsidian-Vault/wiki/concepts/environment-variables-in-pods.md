---
type: concept
title: Environment Variables in Pods
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/env-configmaps-&-secrets_9586ac]]'
tags:
- deployment
aliases:
- env field
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Environment Variables in Pods
---
# Environment Variables in Pods

## Definition
Environment Variables in Pods is the mechanism in Kubernetes for injecting configuration data into containers at runtime using the `env` field in the container specification. This allows applications to receive configuration parameters without needing to rebuild the container image.

## Key Characteristics
- Defined in the pod specification under `containers[].env`
- Supports both literal string values (`value` field) and references to existing resources (`valueFrom` field)
- Can reference ConfigMaps via `configMapKeyRef` to use non-sensitive configuration data
- Can reference Secrets via `secretKeyRef` to use sensitive data like passwords or API keys
- Enables dynamic, runtime configuration separate from application code
- Changes to referenced ConfigMaps/Secrets can be propagated to pods (depending on configuration)

## Applications
- Passing database connection strings and API endpoints to applications
- Injecting feature flags and application behavior settings
- Providing credentials and access keys securely through Secrets
- Configuring environment-specific parameters (development, staging, production)
- Enabling Twelve-Factor App methodology by separating config from code
- Facilitating dynamic updates without container image rebuilds

## Related Concepts
- [[concepts/configmaps]]
- [[concepts/secrets]]
- [[concepts/envfrom]]
- configMapKeyRef
- [[concepts/configmaps]]

## Related Entities

## Mentions in Source
- The `env` field injects variables into containers: — env-configmaps-&-secrets_9586ac
- From ConfigMap or Secret: use `valueFrom` instead of `value`: — env-configmaps-&-secrets_9586ac