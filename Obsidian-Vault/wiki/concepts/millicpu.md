---
type: concept
title: MilliCPU
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/resource-requests-&-limits_4bd978]]'
tags:
- scaling
aliases:
- CPU milliunits
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: MilliCPU
---
# MilliCPU

## Definition
MilliCPU is a unit of measurement for CPU resources in Kubernetes, where 1 millicpu (m) equals one-thousandth of a CPU core. It allows for fine-grained specification of fractional CPU requests and limits, such as `100m` for 0.1 CPU.

## Key Characteristics
- A metric used in Kubernetes to specify fractional CPU resources.
- 1 millicpu (m) = 0.001 CPU core.
- Enables precise resource allocation and scheduling for containers with minimal CPU needs.
- The minimum allowed value is `1m` (0.001 CPU).
- Used in resource requests and limits within Pod specifications to control CPU utilization.

## Applications
- Defining fractional CPU requests and limits for lightweight or burstable containers.
- Optimizing cluster resource utilization by allowing fine-grained bin-packing of workloads onto nodes.
- Ensuring that pods requiring only a small fraction of a CPU core are correctly scheduled and allocated appropriate resources.
- Controlling CPU throttling and guarantees for quality of service (QoS) in multi-tenant clusters.

## Related Concepts
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]
- [[concepts/millicpu]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- `0.1` CPU = `100m` (milliCPU) — resource-requests-&-limits_4bd978
- Minimum `1m` (0.001 CPU) — resource-requests-&-limits_4bd978