---
type: concept
title: Recreate Strategy
created:
- 2025-06-30
updated:
- 2026-06-30
sources:
- '[[sources/rolling-updates-&-rollbacks_f484ef]]'
tags:
- deployment
aliases:
- Recreate Deployment Strategy
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Recreate Strategy
---
# Recreate Strategy

## Definition
The Recreate strategy is a Kubernetes Deployment update method that completely terminates all existing Pods of an application before creating new Pods with the updated container image or configuration.

## Key Characteristics
- Terminates all existing Pods before creating new ones
- Causes a temporary application outage during the update process
- Results in a poor user experience due to downtime
- Not the default Kubernetes Deployment strategy (Rolling Update is default)
- Considered risky due to the involved downtime
- Useful when two versions of an application cannot coexist or share resources

## Applications
The Recreate strategy is appropriate in scenarios where:
- Application versions are incompatible and cannot run simultaneously
- The application requires exclusive access to resources during updates
- Development or testing environments where temporary downtime is acceptable
- Legacy applications that are not designed for zero-downtime deployments

## Related Concepts
- [[concepts/rolling-update-strategy]]

## Related Entities
- [[entities/pods]]
- [[entities/kubernetes]]

## Mentions in Source
- **All old Pods are deleted** first, then **new ones are created**. — rolling-updates-&-rollbacks_f484ef
- ❌ App goes **down temporarily** – bad user experience. — rolling-updates-&-rollbacks_f484ef
- **Not default** strategy. — rolling-updates-&-rollbacks_f484ef