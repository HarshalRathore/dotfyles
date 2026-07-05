---
title: "node drain"
sources:
  - "[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]"
tags:
  - deployment
aliases:
  - node draining
---
# node drain

## Definition
Node drain is a Kubernetes operation that safely evicts pods from a node, preparing it for maintenance such as OS upgrades. It is initiated with the `kubectl drain` command, which first cordons the node (marks it as unschedulable) and then gracefully evicts all evictable pods. The operation ensures workloads managed by ReplicaSets or Deployments are rescheduled on other nodes to maintain availability.

## Key Characteristics
- Combines two operations: cordoning the node and gracefully evicting pods
- Marks the node as unschedulable to prevent new pods from being scheduled
- Gracefully evicts evictable pods (respects termination grace periods)
- By default, excludes DaemonSet-managed pods from eviction
- Supports flags like `--ignore-daemonsets` to skip DaemonSet pods and `--delete-local-data` to handle pods with local (emptyDir) storage
- Designed to maintain workload availability during node maintenance
- Requires the node to be uncordoned after maintenance is complete

## Applications
- **OS upgrades and patching**: Safely moving workloads before applying system-level updates
- **Hardware maintenance**: Preparing nodes for physical or virtual hardware changes
- **Cluster upgrades**: Moving pods off nodes during Kubernetes component upgrades (e.g., with `kubeadm upgrade`)
- **Node decommissioning**: Removing a node from the cluster permanently
- **Resource optimization**: Migrating workloads to rebalance cluster resource utilization

## Related Concepts
- [[concepts/node-cordon]]
- [[concepts/node-uncordon]]
- [[concepts/pod-eviction-timeout]]
- [[concepts/kubeadm-upgrade]]

## Related Entities
- [[entities/kubectl]]
- [[entities/kubeadm]]

## Mentions in Source
- "kubectl drain <node> — Equivalent to: 1. cordon: mark Unschedulable 2. Graceful eviction of all evictable pods (ReplicaSets, Deployments, DaemonSets excluded by default)." — cluster-maintenance-draining-&-os-upgrades_98d707
- "→ safely migrates pods off node-A" — cluster-maintenance-draining-&-os-upgrades_98d707