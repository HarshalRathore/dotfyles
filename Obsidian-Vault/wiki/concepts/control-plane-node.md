---
summary: "The control-plane node is the foundational, conceptual 'brain' of a [[entities/kubernetes]] cluster, responsible for maintaining the cluster's state, making global decisions, and coo..."
type: concept
title: "Control Plane Node"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
  - "[[sources/introduction_804367]]"
  - "[[sources/install-kubernetes-components_c70e92]]"
  - "[[sources/main-kubernetes-components_82b036]]"

---
## Description
The control-plane node is the foundational, conceptual 'brain' of a [[entities/kubernetes]] cluster, responsible for maintaining the cluster's state, making global decisions, and coordinating worker nodes. This includes hosting the API Server, [[concepts/scheduler]], Controller Manager, and the [[entities/etcd]] data store, which together form the control plane. The control plane runs on these nodes and is responsible for the overall functioning and coordination of the Kubernetes cluster. This abstract role contrasts directly with the [[worker-node-2]], which run application workloads in the data plane. In a practical, self-managed setup (e.g., on [[entities/aws]]), this role is implemented by a specific server instance, such as an Ubuntu 20.04 LTS [[entities/ec2]] instance of type t2.medium. During bootstrapping with `kubeadm`, the core components are initialized as [[concepts/static-pods]] managed directly by the [[entities/kubelet]]. For reliability, control-plane nodes are typically deployed in high-availability configurations to ensure the cluster remains operational if one instance fails.

## Related Concepts
- control-plane
- [[worker-node]]
- kubernetes-api-server
- [[concepts/scheduler]]
- controller-manager
- [[concepts/network-port-configuration]]
- node-authorizer
- security-groups
- [[concepts/bootstrapping]]
- [[concepts/static-pods]]
- [[concepts/kubeadm-init]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/etcd]]
- [[entities/kubelet]]
- [[entities/kubectl]]
- [[entities/ec2]]
- [[entities/ubuntu-server]]
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]
- [[entities/kubeadm]]
- Master Node

## Mentions in Source

> **Source: kubernetes-installation-steps_e573e8**
> - "
  - "
> - "
  - "

> **Source: introduction_804367**
> - "
  - "
> - "
  - "
> - "
  - "

> **Source: install-kubernetes-components_c70e92**
> - "
  - "

> **Source: main-kubernetes-components_82b036**
> - "
  - "
> - "