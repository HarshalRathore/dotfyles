---
type: concept
title: Version Locking
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/install-kubernetes-components_c70e92]]'
tags:
- deployment
aliases:
- apt-mark hold
- version hold
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Version Locking
---
# Version Locking

## Definition
Version locking is a system administration method used to prevent the automatic or unintended upgrade of specific software packages. By marking packages to be held at their current installed version, administrators ensure a consistent and predictable environment, which is critical for cluster stability and reproducibility in distributed systems like Kubernetes.

## Key Characteristics
- Prevents package managers (like APT) from upgrading marked packages during routine system updates.
- Ensures all nodes in a cluster run identical, compatible versions of core components.
- Typically applied after manually installing specific, verified versions of critical software.
- Provides a safeguard against breaking changes introduced by newer, untested package releases.
- Enhances cluster reliability and simplifies debugging by maintaining version consistency.

## Applications
- **Kubernetes Cluster Management**: Used to hold versions of `kubeadm`, `kubelet`, and `kubectl` across all control plane and worker nodes to prevent drift and ensure cluster stability.
- **Server Provisioning**: Applied in configuration management and infrastructure-as-code to lock system utilities or dependencies after a verified installation.
- **Production Environment Hardening**: Used in any scenario where reproducibility and stability are prioritized over accessing the latest features or patches.

## Related Concepts
- [[concepts/kubernetes-apt-repository-setup]]
- kubernetes-tooling-installation

## Related Entities
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/kubectl]]

## Mentions in Source
- "Lock versions to prevent unintended upgrades:" — install-kubernetes-components_c70e92
- "sudo apt-mark hold kubelet kubeadm kubectl" — install-kubernetes-components_c70e92