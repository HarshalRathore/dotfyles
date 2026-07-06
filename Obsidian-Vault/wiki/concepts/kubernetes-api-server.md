---
type: concept
title: Api Server
created:
- datetime.date(2026
- 6
- 30)
updated:
- datetime.date(2026
- 6
- 30)
sources:
- '[[sources/static-pod_d72e06]]'
- '[[sources/main-kubernetes-components_82b036]]'
- '[[sources/admission-controllers_7667fc]]'
tags:
- control-plane
- api
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Kubernetes Api Server
---
## Description
The Kubernetes API server (kube-apiserver) is the central hub for all cluster communication, implementing a RESTful API that accepts, validates, and executes requests for cluster resources. Serving as the front end for the Kubernetes control plane, it exposes the Kubernetes API that [[entities/kubectl]] and other components use to communicate with the cluster. It enforces authentication, authorization, and admission control policies before persisting the desired state to [[entities/etcd]], acting as the single source of truth for the cluster. The kube-apiserver is where admission controllers are registered and executed, forming a chain that can be configured using `--enable-admission-plugins` and `--disable-admission-plugins` flags to extend or modify request processing behavior. For initial cluster setup and bootstrapping, the API server itself, along with other core control-plane components like etcd, is often run as a static Pod on master nodes. This deployment method ensures its lifecycle is managed by the [[entities/kubelet]], providing a reliable way to start and maintain the control plane during and after initial cluster creation. On kubeadm clusters, the kube-apiserver configuration can be customized by editing the manifest file under `/etc/kubernetes/manifests`, where additional admission controllers can be enabled. The API server is essential for all Kubernetes operations, from basic kubectl commands to complex operator workflows.

## Related Concepts
- [[concepts/control-plane-node]]
- [[concepts/authentication-kubernetes]]
- [[concepts/authorization-kubernetes]]
- [[concepts/rbac]]
- [[concepts/network-port-configuration]]
- [[concepts/tls-encryption]]
- [[concepts/host-security]]
- [[concepts/static-pods]]
- [[concepts/admission-controller]]
- [[concepts/kubeadm-init]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/etcd]]
- [[entities/kubectl]]
- [[entities/kubelet]]
- [[entities/kubeadm]]
- kube-controller-manager|kube-controller-manager]]
- kube-scheduler|kube-scheduler]]

## Mentions in Source

> **Source: kubernetes-installation-steps_e573e8**
> - Kubernetes API server|Control-plane|6443 (TCP)|Any (kubectl, kubelets)
> - **6443**: Kubernetes API Server endpoint

> **Source: install-kubernetes-components_c70e92**
> - Run `kube-apiserver`, `etcd`, `kube-controller-manager`, and `kube-scheduler` themselves as static Pods on master nodes.

> **Source: main-kubernetes-components_82b036**
> - The gateway for all cluster interactions.
> - Validates requests and manages security and authentication.

> **Source: admission-controllers_7667fc**
> - On kubeadm clusters, edit the `kube-apiserver` manifest under `/etc/kubernetes/manifests`.
> - API-server flags: `--enable-admission-plugins=<comma-separated>` to turn on additional controllers.