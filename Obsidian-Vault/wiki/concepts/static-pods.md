---
summary: Static Pods are special Kubernetes Pods managed directly by the kubelet on a specific node, without involvement from the Kubernetes API server. They are defined by YAML manifest files placed in...
type: concept
title: Static Pods
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/install-kubernetes-components_c70e92]]'
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
- '[[sources/static-pod_d72e06]]'
category: concepts
tags: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
Static Pods are special Kubernetes Pods managed directly by the kubelet on a specific node, without involvement from the Kubernetes API server. They are defined by YAML manifest files placed in a static pod manifest directory (typically `/etc/kubernetes/manifests`), which the kubelet watches to automatically create, update, or delete pods based on file changes. This mechanism is crucial for bootstrapping the control plane, as it allows critical components like `kube-apiserver`, `etcd`, `kube-scheduler`, and `kube-controller-manager` to run before the API server itself is available, solving the fundamental "
  - " problem of cluster initialization. Key characteristics include being **node-bound**, where each manifest lives on exactly one node, and **self-reconciling**, as the kubelet ensures the pod is running. While not part of the regular cluster state stored in etcd, the API server creates a **mirror pod** for each static pod to provide visibility. They are primarily used for bootstrapping control-plane components and in standalone or lightweight cluster setups where full controllers are unnecessary.

## Related Concepts
- [[concepts/control-plane-node]]
- [[concepts/worker-node]]
- bootstrapping-control-place_e4e0df
- mirror-pod

## Related Entities
- [[entities/kubelet]]
- [[entities/kubeadm]]

## Mentions in Source
- **Source: install-kubernetes-components_c70e92**
  - "
  - "
- **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
  - "
  - "
- **Source: static-pod_d72e06**
  - "
  - "
  - "