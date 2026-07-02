---
title: "Pod Eviction"
sources:
  - "cluster-maintenance-draining-&-os-upgrades_98d707"
tags:
  - phenomenon
aliases:
  - Graceful Pod Eviction
---
# Pod Eviction

## Definition
Pod eviction is a mechanism in Kubernetes where pods are forcibly removed from a node, typically in response to node failures or as part of planned operational procedures like node maintenance. The system ensures workload continuity by allowing controllers to recreate the evicted pods elsewhere.

## Key Characteristics
- **Trigger Conditions**: Can be initiated by node failures (unresponsive nodes) or manual actions (like node draining for maintenance).
- **Governed by Timeout**: In failure scenarios, the kube-controller-manager waits for a configurable `pod-eviction-timeout` before evicting pods from a failed node.
- **Graceful Process**: Pods are terminated gracefully (receiving a SIGTERM signal) during planned evictions, allowing them to shut down properly.
- **Workload Resilience**: Evicted pods belonging to managed workloads (e.g., ReplicaSets, Deployments) are automatically recreated by their respective controllers on other healthy nodes.
- **Controlled Exclusion**: By default, pods managed by DaemonSets are typically excluded from eviction during node drains.

## Applications
- **Cluster Maintenance & Node Draining**: Pods are gracefully evicted from a node to safely perform OS upgrades, apply patches, or perform hardware maintenance.
- **Node Failure Recovery**: Automatically reschedules workloads from unresponsive nodes to healthy nodes in the cluster to maintain application availability.
- **Resource Reclamation**: Evicts lower-priority pods to free up resources for higher-priority workloads during node pressure scenarios (related to pod priority and preemption).

## Related Concepts
- [[concepts/pod-eviction-timeout]]
- [[concepts/node-drain]]

## Related Entities
- kube-controller-manager|Kube Controller Manager]]

## Mentions in Source
- "Graceful eviction of all evictable pods (ReplicaSets, Deployments, DaemonSets excluded by default)." — cluster-maintenance-draining-&-os-upgrades_98d707
- "Master waits this long before declaring a node 'dead' and evicting pods." — cluster-maintenance-draining-&-os-upgrades_98d707