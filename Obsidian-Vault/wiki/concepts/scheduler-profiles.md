---
type: concept
title: "Scheduler Profiles"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/scheduling_f2b3ef]]"
tags:
  - scheduling
aliases:
  - "kube-scheduler profiles"
  - schedulerName profiles
---
# Scheduler Profiles

## Definition
Scheduler profiles in Kubernetes allow multiple scheduling configurations to run within a single `kube-scheduler` process. Defined within the `KubeSchedulerConfiguration`, each profile is an independent configuration block with its own unique `schedulerName` and set of plugins. This architecture enables different Pods to use different scheduling logic by specifying their corresponding `schedulerName`.

## Key Characteristics
- Enables running multiple, independent scheduling configurations within one `kube-scheduler` process.
- Each profile is defined with a unique `schedulerName` and a specific set of plugins.
- Configuration is managed centrally via the `KubeSchedulerConfiguration` file.
- Prevents race conditions that can occur when running multiple separate scheduler binaries.
- Introduced as a feature in Kubernetes v1.18.
- Enhances resource efficiency and simplifies operational management compared to deploying multiple scheduler binaries.

## Applications
- **Multi-tenant clusters:** Providing different scheduling policies for different tenants or teams within the same cluster.
- **Specialized workload scheduling:** Configuring profiles with specific plugins for specialized hardware (e.g., GPUs) or workload types.
- **Policy isolation:** Separating scheduling logic for system-critical pods from user workloads.
- **Simplified operations:** Reducing the overhead of managing multiple scheduler deployments while retaining the flexibility of multiple schedulers.

## Related Concepts
- [[concepts/multiple-schedulers]]
-  (Note: Page does not exist yet)

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Since Kubernetes v1.18, multiple scheduler profiles (each with its own name and plugin set) can run in one process to avoid race conditions." — scheduling_f2b3ef
- "Now preferred: define several profiles in one `kube-scheduler` config, each with its own `schedulerName` and plugin configuration." — scheduling_f2b3ef