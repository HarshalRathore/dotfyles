---
type: concept
title: "LimitRange"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "resource-requests-&-limits_4bd978"
tags:
  - scheduling
aliases:
  - LR
---
# LimitRange

## Definition
A LimitRange is a Kubernetes resource object that is configured at the namespace level to set default resource requests and limits for containers, as well as define minimum and maximum constraints for those values. It helps enforce resource management policies by automatically applying defaults to pods that do not specify resource requirements and by rejecting any pod whose container specifications violate the defined minimum or maximum boundaries.

## Key Characteristics
- **Sets Default Values:** Defines default CPU and memory requests and limits for containers within a namespace. Pods created without explicit resource specifications inherit these defaults.
- **Enforces Min/Max Constraints:** Establishes minimum and maximum allowable values for container resource requests and limits.
- **Namespace-Scoped:** LimitRange resources are scoped to a specific namespace, providing granular control in multi-tenant clusters.
- **Policy Enforcement:** Rejects the creation of any pod whose container resource specifications fall outside the defined min/max boundaries.
- **Resource Quota Support:** Works in conjunction with ResourceQuota to provide comprehensive resource governance and prevent resource abuse.

## Applications
LimitRange is crucial in managed and multi-tenant Kubernetes environments for:
- **Providing Sensible Defaults:** Ensuring every container has at least a baseline resource allocation, preventing resource starvation.
- **Imposing Guardrails:** Preventing teams or applications from consuming an unfair share of resources by capping maximum requests/limits.
- **Simplifying Application Deployment:** Allowing developers to deploy applications without needing to specify resource details for every container, relying on the enforced defaults.
- **Maintaining Cluster Stability:** Helping cluster administrators control resource consumption patterns and maintain predictable performance.

## Related Concepts
- [[concepts/resource-limits]]
- [[concepts/resource-requests]]
- [[concepts/resourcequota]]
- [[concepts/annotations]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- **LimitRange** objects can define per-container defaults/min/max for `requests` & `limits` in a namespace. — resource-requests-&-limits_4bd978
- New Pods **without** explicit values inherit these defaults; violates min/max are **rejected**. — resource-requests-&-limits_4bd978