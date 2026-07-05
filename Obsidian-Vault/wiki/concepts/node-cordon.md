---
title: "Node Cordon"
sources:
  - "[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]"
tags:
  - deployment
aliases:
  - cordon
---
# Node Cordon

## Definition
Node cordon is a Kubernetes administrative operation that marks a cluster node as unschedulable, preventing the Kubernetes scheduler from assigning new Pods to that node while leaving existing, running Pods untouched.

## Key Characteristics
- Performs a non-disruptive node state change; it only affects future scheduling decisions.
- Is an atomic operation implemented via the `kubectl cordon` command.
- Sets the `spec.unschedulable` field to `true` on the target node object.
- Acts as a prerequisite or safe preparatory step for more disruptive operations like node drain.
- Is easily reversible using the `kubectl uncordon` command.
- Has no effect on DaemonSet-managed Pods or static Pods, which are controlled by other mechanisms.

## Applications
- **Node Maintenance Preparation:** The first step before performing OS upgrades, applying patches, or performing hardware maintenance. It allows workloads to continue running on the node while preventing new ones from being placed there.
- **Controlled Workload Migration:** When used in conjunction with manual Pod deletion or `kubectl drain`, it ensures no new workloads interrupt the maintenance process.
- **Rolling OS Tests:** Used alone to test OS-level changes on a node in isolation without moving existing Pods, allowing for validation of system stability.
- **Cluster Scaling or Decommissioning:** Temporarily cordoning a node before removing it from the cluster to ensure a graceful shutdown and workload migration.

## Related Concepts
- [[concepts/node-drain]]
- [[concepts/node-uncordon]]
- [[concepts/taints]]
- 

## Related Entities
- [[entities/kubectl]]

## Mentions in Source
- `kubectl cordon <node>` — Marks node Unschedulable. Does NOT touch existing pods—prevents new pods from landing there. — cluster-maintenance-draining-&-os-upgrades_98d707
- Cordoning Only: Use cordon alone for rolling OS-level tests without moving existing pods. — cluster-maintenance-draining-&-os-upgrades_98d707