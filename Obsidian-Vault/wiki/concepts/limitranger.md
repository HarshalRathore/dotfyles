---
type: concept
title: "LimitRanger"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - scheduling
aliases:
  - Limit Range Controller
---
# LimitRanger

## Definition
LimitRanger is a built-in mutating admission controller in Kubernetes that enforces `LimitRange` constraints and applies default resource requests and containers specifications when they are not provided by the user. It runs during the mutating admission phase of the Kubernetes API request lifecycle to automatically ensure resource compliance at the namespace level.

## Key Characteristics
- Operates as a **mutating admission controller**, modifying incoming Pod and Container specifications before they are persisted.
- Enforces constraints defined in the `LimitRange` object, which specifies minimum, maximum, and default resource requests/limits for CPU and memory.
- Automatically injects default resource requests and limits into Pod containers when they are omitted, ensuring all workloads adhere to namespace policies.
- Essential for cluster governance and resource management, preventing unbounded resource consumption and promoting fair allocation.
- Works in conjunction with other mutating controllers like `AlwaysPullImages`, `DefaultStorageClass`, and `DefaultIngressClass`.

## Applications
- **Namespace Resource Governance**: Applying consistent resource policies across all workloads within a namespace, especially in multi-tenant environments.
- **Preventing Resource Starvation**: Enforcing minimum resource guarantees so critical applications always have baseline resources available.
- **Cost Control and Quota Management**: Setting maximum resource limits to prevent individual pods from consuming excessive resources and impacting cluster stability.
- **Simplifying Deployment Manifests**: Reducing developer burden by automatically filling in sensible default resource specifications if they are not explicitly defined.
- **Enabling Cluster Consistency**: Ensuring all pods meet organizational or platform team standards for resource requests and limits without manual review.

## Related Concepts
- [[concepts/mutating-phase]]
- [[concepts/admission-controller]]
- [[concepts/limitrange]]

## Related Entities
No related entities.

## Mentions in Source
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). — admission-controllers_7667fc
- **LimitRanger**: enforces `LimitRange` constraints and applies defaults if missing. — admission-controllers_7667fc