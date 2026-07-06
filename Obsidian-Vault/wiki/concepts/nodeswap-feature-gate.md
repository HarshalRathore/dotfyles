---
type: concept
title: NodeSwap feature gate
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-installation-steps_e573e8]]'
tags:
- scheduling
aliases:
- swap feature gate
- Kubernetes NodeSwap
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: NodeSwap feature gate
---
# NodeSwap feature gate

## Definition
NodeSwap is an alpha feature gate in Kubernetes (v1.32+) that enables the use of node-level swap memory as an optional memory management mechanism. It allows Kubernetes to run with swap space enabled, typically via the `--fail-swap-on=false` flag, providing an alternative memory management strategy in specific environments.

## Key Characteristics
- **Alpha Status**: Introduced as an alpha feature in Kubernetes v1.32, meaning it is experimental and not yet stable.
- **Optional Memory Management**: Provides flexibility for nodes to use swap as a memory overflow mechanism when physical RAM is exhausted.
- **Environment-Specific Use**: Designed primarily for non-production environments (like development or testing) where memory pressure is managed differently.
- **Requires Flag**: Activation requires the explicit `--fail-swap-on=false` flag to allow the kubelet to start with swap enabled.
- **Not Production-Recommended**: Use is discouraged in production clusters due to potential performance degradation and unpredictability.

## Applications
- **Development & Testing Clusters**: Useful in small development clusters or personal testing environments where strict performance consistency is not critical.
- **Resource-Constrained Environments**: Allows workloads to run on nodes with limited physical memory by utilizing swap as an overflow.
- **Specialized Workloads**: Certain batch processing or non-latency-sensitive jobs might leverage swap for cost-effective memory management.
- **Cluster Bootstrapping & Experiments**: Facilitates experimentation and learning with Kubernetes memory management features.

## Related Concepts
- [[concepts/disable-swap]]
- [[concepts/prerequisites-verification]]
- [[concepts/disable-swap]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubelet]]

## Mentions in Source
- "Kubernetes v1.32+ supports swap as an alpha feature via the NodeSwap feature gate and --fail-swap-on=false" — kubernetes-installation-steps_e573e8