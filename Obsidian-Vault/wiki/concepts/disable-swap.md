---
type: concept
title: "Disable swap"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-installation-steps_e573e8"
tags:
  - security
aliases:
  - swap disabling
  - swap disabled
---
# Disable swap

## Definition
Disabling swap is a critical node preparation method for Kubernetes, involving the temporary deactivation of the host's swap memory area using the `swapoff -a` command and the permanent prevention of its reactivation by commenting out or removing swap entries from the `/etc/fstab` file. This ensures the node operates without host-level memory paging, which is essential for the predictable performance and resource accounting of the Kubernetes scheduler and runtime.

## Key Characteristics
- **Prerequisite for Kubernetes:** A mandatory step performed during node setup before initializing a cluster or joining a node to an existing one.
- **Ensures Accurate Memory Accounting:** Allows the kubelet to directly monitor and allocate the full physical RAM of the node without interference from the kernel's swap mechanism.
- **Enables Quality of Service (QoS) Enforcement:** Prevents the kernel from swapping out container memory, which is fundamental for the kubelet to reliably enforce Kubernetes QoS classes (Guaranteed, Burstable, BestEffort).
- **Prevents Performance Degradation:** Avoids the significant latency and CPU overhead associated with memory paging, which can severely impact critical components like the kubelet and container runtime.

## Applications
- **Node Provisioning:** Executed as a standard step in automation scripts and cloud-init templates when creating new Kubernetes worker or control plane nodes.
- **Cluster Installation Guides:** A fundamental instruction in step-by-step tutorials for building a Kubernetes cluster from scratch.
- **Performance Troubleshooting:** Applied as a corrective measure when diagnosing node performance issues related to high swap usage and unresponsive pods.

## Related Concepts
- node prerequisites
- memory management

## Related Entities
- [[entities/kubelet]]
- [[entities/containerd]]

## Mentions in Source
- "Kubernetes requires swap to be disabled so that the kubelet can accurately track available memory and enforce QoS classes without interference from the host’s swap mechanism." — kubernetes-installation-steps_e573e8