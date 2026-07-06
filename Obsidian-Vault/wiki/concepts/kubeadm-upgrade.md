---
title: kubeadm upgrade
sources:
- '[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]'
tags:
- deployment
aliases:
- kubeadm upgrade node
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-04T15:08:36.860093+00:00'
updated: '2026-07-04T15:08:36.860093+00:00'
summary: kubeadm upgrade
---
# kubeadm upgrade

## Definition
kubeadm upgrade is a set of commands provided by the kubeadm tool for upgrading a Kubernetes cluster. The process involves upgrading the control plane components (API server, controller manager, scheduler) and then updating the worker nodes. This method is used for clusters that were initially set up with kubeadm.

## Key Characteristics
- Provides a structured, step-by-step process for upgrading a Kubernetes cluster.
- Separates the upgrade process into two main phases: control plane upgrade and worker node upgrade.
- Includes commands to check compatibility and plan the upgrade path before applying changes.
- Ensures the cluster adheres to version skew policies by guiding compatible version transitions.
- Maintains cluster availability during the upgrade by following a controlled, node-by-node procedure for worker nodes.

## Applications
- Upgrading a Kubernetes cluster from one version to another (e.g., v1.27 to v1.28).
- Performing routine maintenance and security updates on clusters managed by kubeadm.
- Ensuring cluster components are running on a supported and stable Kubernetes release.
- Preparing for new feature adoption by moving to a newer Kubernetes version.

## Related Concepts
- [[concepts/node-drain]]
- [[concepts/node-uncordon]]
- [[concepts/version-skew-policy]]

## Related Entities
- [[entities/kubeadm]]

## Mentions in Source
- kubeadm upgrade plan → shows current & target versions — cluster-maintenance-draining-&-os-upgrades_98d707
- kubeadm upgrade apply v1.<next> → bump control-plane — cluster-maintenance-draining-&-os-upgrades_98d707
- kubeadm upgrade node → update node’s bootstrap config — cluster-maintenance-draining-&-os-upgrades_98d707