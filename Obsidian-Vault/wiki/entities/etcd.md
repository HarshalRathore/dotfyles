---
type: entity
title: "Etcd"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "static-pod_d72e06"
  - "main-kubernetes-components_82b036"
tags:
  - product
aliases:
  - etcd database
---
## Related Entities
- Kubernetes
- [[entities/kubelet]]
- kube-apiserver|kube-apiserver]]
- [[entities/etcd]]
- [[entities/kubeadm]]

## Related Concepts
- [[tls-encryption]]
- [[concepts/static-pods]]
- [[concepts/bootstrapping-control-plane]]
- [[concepts/control-plane-node]]
- Cluster State

## Mentions in Source
- "All traffic between: kube-apiserver ↔ etcd" — 🔐-security-in-kubernetes_0a37d1
- "Secure the **infrastructure** (physical or cloud). If the host is compromised, so is the entire cluster." — 🔐-security-in-kubernetes_0a37d1

> **Source: static-pod_d72e06**
> - "Run `kube-apiserver`, `etcd`, `kube-controller-manager`, and `kube-scheduler` themselves as static Pods on master nodes."

> **Source: main-kubernetes-components_82b036**
> - "A distributed key-value store that maintains the cluster's state."
> - "It listens on port `2379` it has a `etcdctl` utility to talk with the etcd api server."
> - "Acts as the cluster's \"brain,\" storing all state changes."