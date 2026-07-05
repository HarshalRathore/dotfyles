---
type: "concept"
title: "Resourcequota"
created: [datetime.date(2024, 6, 29)]
updated: [datetime.date(2026, 6, 30)]
sources: ["[[sources/admission-controllers_7667fc]]"]
tags:
  - resources
  - limits
---
## Definition
ResourceQuota is a Kubernetes object that enforces hard limits on the total amount of resources (like CPU and memory requests and limits) that can be consumed across all pods in a namespace. It operates as a built-in validating admission controller that checks whether resource requests and limits would exceed the defined quota for a namespace. It aggregates resource usage to prevent any single namespace from monopolizing cluster resources, promoting fairness in shared environments.

## Key Characteristics
- Enforces hard caps on total resource requests and limits per namespace
- Aggregates resource consumption across all pods within a namespace
- Prevents namespace-level resource monopolization in shared clusters
- Returns a 403 Forbidden error when resource creation requests would exceed quotas
- Works in conjunction with LimitRange for granular resource control
- Applies to compute resources like CPU and memory
- Provides namespace-level multi-tenancy and resource fairness
- Operates as a built-in validating admission controller during the validating phase
- Prevents resource overcommitment by rejecting pods that would exceed quotas

## Applications
- Enforcing resource fairness in multi-tenant Kubernetes clusters
- Preventing resource starvation across different teams or projects sharing a cluster
- Implementing cost control and resource governance policies
- Supporting namespace-based resource planning and allocation
- Complementing LimitRange for comprehensive resource management strategies

## Related Concepts
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]
- [[concepts/limitrange]]
- aggregate control

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- **ResourceQuota** enforces hard caps on total requests/limits across a namespace. — resource-requests-&-limits_4bd978
- Attempts to exceed these totals result in a **403 Forbidden** error. — resource-requests-&-limits_4bd978

> **Source: admission-controllers_7667fc**
> - **ResourceQuota**: enforces total resource usage per namespace.
> - Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**).