---
summary: "The controller-manager, specifically kube-controller-manager, is a fundamental control-plane component that executes critical controller processes such as replica controllers, endpoint controll..."
type: concept
title: "Controller Manager"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "bootstrapping-control-place_e4e0df"
  - "static-pod_d72e06"
  - "main-kubernetes-components_82b036"
---
## Description
The controller-manager, specifically kube-controller-manager, is a fundamental control-plane component that executes critical controller processes such as replica controllers, endpoint controllers, and service account controllers, which actively maintain the desired state of the cluster. It contains multiple controllers like the Node controller, Job controller, EndpointSlice controller, and ServiceAccount controller, all compiled into a single binary for simplicity. The Controller Manager responds to failures, manages node lifecycle, and ensures the cluster maintains its desired configuration. During the bootstrapping of a control plane, it is commonly run alongside other core components like the API server, etcd, and scheduler as static Pods on master nodes, which allows it to operate outside the API server's direct control initially. Its managed background reconciliation loops continuously monitor cluster state via the kubernetes-api-server and adjust resources like Pods and Nodes to match the declared configuration. Importantly, the controllers it manages do not interfere with the static Pods themselves, as static Pods operate independently of the standard API-driven control loop. In clusters initialized with [[entities/kubeadm]], it is deployed as a static Pod and uses its own kubeconfig and TLS certificates, typically located in `/etc/kubernetes/pki`. This component is essential for automated provisioning and lifecycle management of all major Kubernetes resources.

## Related Concepts
- [[concepts/static-pods]]
- [[concepts/kubeadm-init]]
- kubernetes-api-server
- [[concepts/scheduler]]
- [[concepts/control-plane-node]]
- [[concepts/control-plane-node]]
- [[concepts/desired-state]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubeadm]]
- [[entities/etcd]]

## Mentions in Source
> **Source: bootstrapping-control-place_e4e0df**
> - "
  - "

> **Source: static-pod_d72e06**
> - "
  - "

> **Source: main-kubernetes-components_82b036**
> - "
  - "
> - "