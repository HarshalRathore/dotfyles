---
title: "Rolling Upgrade"
sources:
  - "[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]"
tags:
  - deployment
aliases:
  - Cluster Rolling Upgrade
  - "Zero-Downtime Cluster Update"
---
# Rolling Upgrade

## Definition
A rolling upgrade is a method for updating a Kubernetes cluster with minimal downtime. It involves upgrading nodes one at a time, starting with control-plane nodes (if using kubeadm) and then worker nodes, ensuring workloads are gradually migrated to updated nodes without service interruption.

## Key Characteristics
- **Sequential Node Upgrade:** Nodes are updated one by one, not all at once.
- **Minimal Downtime:** Designed to maintain service availability during the upgrade process.
- **Structured Workflow:** Follows a specific order, typically starting with control-plane nodes before worker nodes.
- **Node Lifecycle Management:** Involves draining a node, performing the upgrade, and then making it available for scheduling again (uncordon).
- **Applied to Infrastructure:** Typically used for upgrading the underlying Kubernetes node operating systems and Kubernetes components (e.g., via kubeadm).

## Applications
- Performing in-place upgrades of Kubernetes cluster nodes (control-plane and workers) without rebuilding them.
- Applying security patches and OS updates to cluster nodes with continuous service.
- Upgrading Kubernetes system packages (`kubelet`, `kubectl`, etc.) on nodes in a safe, controlled manner.
- Maintaining high availability for stateless applications during infrastructure maintenance windows.

## Related Concepts
- Node Drain|Node Drain]]
- Node Cordon|Node Cordon]]
- Node Uncordon|Node Uncordon]]
- Kubeadm Upgrade|Kubeadm Upgrade]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/kubernetes]]

## Mentions in Source
- **Rolling Upgrade Workflow (kubeadm)** — cluster-maintenance-draining-&-os-upgrades_98d707
- **Worker Nodes** (one at a time) — cluster-maintenance-draining-&-os-upgrades_98d707