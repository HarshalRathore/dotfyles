---
type: concept
title: "swap"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "manual-notes_10b5c5"
tags:
  - security
aliases:
  - virtual memory
---
# swap

## Definition
Swap is a Linux virtual memory mechanism that uses designated disk space as an extension of the system's physical RAM. It allows the operating system to move inactive memory pages from RAM to disk, freeing up physical memory for active processes. In the context of Kubernetes, swap must be disabled to ensure predictable performance and maintain compatibility with the kubelet component.

## Key Characteristics
- Provides a mechanism to extend physical RAM using disk space
- Operates as part of the Linux kernel's memory management system
- Disabling swap is a mandatory prerequisite for Kubernetes cluster initialization
- Enabled/disabled status is controlled via system commands and configuration files
- Must be permanently disabled by removing entries from `/etc/fstab`
- Status can be verified using system monitoring tools like `/proc/swaps`

## Applications
- Primary use in Linux systems as virtual memory management
- Critical configuration step for Kubernetes cluster node preparation (both master and worker nodes)
- Performance optimization in container orchestration environments
- System stability requirement for predictable memory allocation in distributed systems

## Related Concepts
[[concepts/disable-swap]]
[[concepts/nodeswap-feature-gate]]

## Related Entities
[[entities/linux]]

## Mentions in Source
- "Turn off swap on master and workers" — manual-notes_10b5c5
- "Do this with `swapoff -a` check with `cat /proc/swaps` it shouldn't show any devices or entry now edit the `/etc/fstab` file and remove any line which has swap word in it" — manual-notes_10b5c5