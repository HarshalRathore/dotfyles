---
title: "pod-eviction-timeout"
sources:
  - "cluster-maintenance-draining-&-os-upgrades_98d707"
tags:
  - deployment
aliases:
  - podEvictionTimeout
---
# pod-eviction-timeout

## Definition
`pod-eviction-timeout` is a configuration parameter for the `kube-controller-manager` in Kubernetes that specifies the duration the system will wait before evicting the pods of an unresponsive node. It serves as a grace period to handle transient network issues, preventing premature pod eviction.

## Key Characteristics
- It is a command-line flag (`--pod-eviction-timeout`) for the `kube-controller-manager` component.
- The default value is 5 minutes.
- Its primary function is to delay the deletion of a node's pods when the node becomes unreachable (e.g., due to network partition or hardware failure).
- Once the timeout expires, the node is declared as "not ready," its pods enter a pending eviction state, and their lifecycle is managed by a higher-level controller (like a ReplicaSet or Deployment) to ensure they are rescheduled on healthy nodes.

## Applications
- **High-Availability Cluster Management:** Helps maintain service availability during brief node disruptions by avoiding unnecessary pod restarts.
- **Node Maintenance Planning:** Provides a predictable window for administrators to troubleshoot or perform maintenance on a node before its workloads are forcibly moved.
- **Disaster Recovery:** Influences the cluster's responsiveness to persistent node failures, determining how quickly workloads are redistributed.

## Related Concepts
- [[concepts/node-drain]]
- [[concepts/controller-manager]]

## Related Entities
- kube-controller-manager|kube-controller-manager]]

## Mentions in Source
- "If a node stays offline > pod-eviction-timeout (default 5 min), its pods are “evicted” and recreated elsewhere (if managed by a ReplicaSet)." — cluster-maintenance-draining-&-os-upgrades_98d707
- "Pod-Eviction-Timeout — Configured on kube-controller-manager (--pod-eviction-timeout, default 5 m)." — cluster-maintenance-draining-&-os-upgrades_98d707