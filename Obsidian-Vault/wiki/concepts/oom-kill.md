---
type: concept
title: "OOM Kill"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "resource-requests-&-limits_4bd978"
tags:
  - scaling
aliases:
  - "out-of-memory kill"
  - memory kill
---
# OOM Kill

## Definition
An OOM Kill (Out-of-Memory Kill) is an event in Kubernetes where the container runtime's kernel detects that a container is consuming more memory than its allocated limit. To prevent system instability and protect the node's health, the kernel terminates the offending process, resulting in the container being killed and restarted according to its pod's restart policy.

## Key Characteristics
- It is a critical, last-resort mechanism enforced at the kernel level to protect node stability.
- It is triggered when a container's memory usage exceeds its configured memory limit.
- The termination is immediate and non-graceful, as it is a forced kill by the host operating system.
- It differs from CPU overcommitment, which results in throttling, not termination.
- Repeated OOM Kills are a strong indicator of misconfigured memory limits, resource contention, or memory leaks in the application.
- It is a node-level action, potentially affecting all containers on the node if system memory is critically low.

## Applications
- **Runtime Memory Enforcement**: Serves as the ultimate safeguard for memory resource limits in a cluster, preventing a single misbehaving container from causing node-wide memory exhaustion.
- **Resource Isolation**: Helps maintain the reliability and performance of other workloads running on the same node by forcibly removing a problematic container.
- **Cluster Stability Management**: Protects the underlying node OS and critical system processes from being killed due to memory pressure from user workloads.

## Related Concepts
- Resource Limits
- [[concepts/cpu-throttling]]
- Memory Management

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "CPU over-use is **throttled**; memory over-use triggers an **OOM kill**." — resource-requests-&-limits_4bd978
- "**CPU** → kernel throttles on excess; **Memory** → kernel OOM-kills container if pressure." — resource-requests-&-limits_4bd978