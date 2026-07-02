---
type: concept
title: "CPU Throttling"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "resource-requests-&-limits_4bd978"
tags:
  - scaling
aliases:
  - kernel throttling
---
# CPU Throttling

## Definition
CPU Throttling is a runtime enforcement mechanism within container orchestration systems like Kubernetes. It occurs when a container exceeds its defined CPU limits, causing the kernel to restrict its CPU usage to prevent resource monopolization. This mechanism ensures stability and fairness across containers on a node by enforcing resource boundaries, reducing allocated CPU time without terminating the container.

## Key Characteristics
- Triggered by a container exceeding its configured CPU limits.
- Enforced by the kernel as a direct consequence of setting CPU resource limits.
- Reduces CPU time allocated to a container, impacting performance but keeping the container running.
- Distinct from an OOM kill, which terminates a container for memory overuse.
- A key component of resource management and fair scheduling in multi-tenant environments.

## Applications
- **Resource Isolation in Kubernetes**: Ensures predictable performance by preventing a single container from consuming all available CPU resources on a node.
- **Fair Scheduling in Multi-Tenant Clusters**: Enables the cluster to allocate CPU fairly among multiple applications or teams.
- **Preventing CPU Starvation**: Protects system stability by limiting runaway processes and guaranteeing baseline performance for all workloads.
- **Cost and Performance Management**: Allows for precise resource allocation, optimizing cluster efficiency and cost in cloud environments.

## Related Concepts
- [[concepts/resource-limits]]
- [[concepts/oom-kill]]
- [[concepts/millicpu]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "CPU over-use is **throttled**; memory over-use triggers an **OOM kill**." — resource-requests-&-limits_4bd978
- "**CPU** → kernel throttles on excess; **Memory** → kernel OOM-kills container if pressure." — resource-requests-&-limits_4bd978