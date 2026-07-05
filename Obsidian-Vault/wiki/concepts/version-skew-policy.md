---
title: "version skew policy"
sources:
  - "[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]"
tags:
  - deployment
aliases:
  - K8s version skew
---
# version skew policy

## Definition
The version skew policy in Kubernetes is a set of rules that defines the maximum allowed differences in minor versions between the core components of a cluster (such as the API server, controller manager, scheduler, kubelet, and kube-proxy) and the command-line client (kubectl). Its primary purpose is to guarantee stability and compatibility, enabling rolling upgrades of clusters without downtime.

## Key Characteristics
- The **kube-apiserver** is considered the control plane anchor and is always at the highest version (denoted as X).
- The **kube-controller-manager** and **kube-scheduler** must be at the same version as the API server (X) or one minor version behind (X-1).
- The **kubelet** and **kube-proxy** running on worker nodes can be at the same version as the API server (X), one minor version behind (X-1), or two minor versions behind (X-2).
- The **kubectl** client is allowed to be one minor version above or below the API server version.
- The policy dictates the order of operations during a cluster upgrade, typically requiring the control plane (API server, controller manager, scheduler) to be upgraded first, followed by the node components (kubelet, kube-proxy).

## Applications
- **Cluster Upgrade Planning:** Provides the definitive ruleset for safely upgrading a Kubernetes cluster, ensuring that components remain compatible throughout the process.
- **Rolling Upgrade Strategy:** Guides the implementation of rolling upgrades, allowing node components to be upgraded at a different pace than control plane components without breaking the cluster.
- **Troubleshooting & Diagnostics:** Helps diagnose issues that may arise from component version mismatches, ensuring they fall within the policy's supported skew.
- **Managed Kubernetes Services:** Forms the basis for upgrade paths and compatibility guarantees offered by managed Kubernetes providers (e.g., GKE, EKS, AKS).

## Related Concepts
- [[concepts/kubeadm-upgrade]]
- [[concepts/semantic-versioning]]

## Related Entities
- kube-apiserver|kube-apiserver]]
- kube-controller-manager|kube-controller-manager]]
- kube-scheduler|kube-scheduler]]
- [[entities/kubelet]]
- kube-proxy|kube-proxy]]
- [[entities/kubectl]]

## Mentions in Source
- Version Skew Policy — kube-apiserver: highest version (X) — kube-controller-manager & kube-scheduler: ≤ X – 0 or X – 1 — kubelet & kube-proxy: ≤ X – 0, X – 1, or X – 2 — cluster-maintenance-draining-&-os-upgrades_98d707
- kubectl: may be one minor above or below kube-apiserver — cluster-maintenance-draining-&-os-upgrades_98d707