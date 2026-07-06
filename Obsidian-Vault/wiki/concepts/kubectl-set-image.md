---
type: concept
title: kubectl set image
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/rolling-updates-&-rollbacks_f484ef]]'
tags:
- deployment
aliases:
- kubectl set-image
- set-image
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: kubectl set image
---
# kubectl set image

## Definition
The `kubectl set image` command is a command-line tool (CLI) operation used to quickly update the container image of a Kubernetes Deployment directly from the terminal, without manually editing the configuration file.

## Key Characteristics
- Provides a direct, imperative method to update container images for Deployments.
- Uses a straightforward syntax: `kubectl set image deployment/<name> <container-name>=<new-image>`.
- The change is applied directly and immediately to the running cluster.
- Does not update the original declarative YAML manifest file, potentially creating a configuration drift between the cluster state and the stored source file.
- Ideal for rapid, one-off updates, testing, or troubleshooting scenarios.
- Not the recommended approach for production environments where maintaining a single source of truth (the YAML file) is critical.

## Applications
- Quick testing of a new container image version during development.
- Performing immediate, emergency image rollbacks or updates in a non-production environment.
- Debugging and iterating rapidly on container configurations without the overhead of file edits and applies.
- Demonstrating Kubernetes command-line capabilities.

## Related Concepts
- [[concepts/kubectl-rollout-history]]
- [[concepts/kubectl-rollout-status]]

## Related Entities
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Mentions in Source
- "Option 2: Quick Image Update (CLI): Run: kubectl set image deployment/<name> <container-name>=<new-image> — rolling-updates-&-rollbacks_f484ef"
- "⚠️ Be careful – config changes won't reflect in YAML, can cause mismatch later. — rolling-updates-&-rollbacks_f484ef"