---
summary: "> **Source: kubernetes-installation-steps_e573e8** > - ' > - '"
type: concept
title: "Key Characteristics"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "kubernetes-installation-steps_e573e8"
  - "introduction_804367"
---
## Key Characteristics
- Executes application workloads by running scheduled containers, hosting pods and their enclosed containers.
- Managed and orchestrated by the Kubernetes control plane via the kubelet agent.
- Requires a compatible container runtime (e.g., containerd) to create and manage container lifecycles.
- Needs specific network ports open for communication: port 10250 (TCP) for the kubelet API and ports 30000–32767 (TCP) for exposing services via NodePort.
- Essential for scaling applications and distributing load across the cluster.
- Runs the kubelet, kube-proxy, and container runtime components locally.

## Applications
- Hosting microservices and other containerized applications.
- Distributing application load horizontally to improve performance and reliability.
- Enabling horizontal scaling of applications by adding more worker nodes to the cluster.
- Providing the compute resources needed for application deployment and operation.

## Related Concepts
- [[concepts/control-plane-node]]
- [[concepts/nodeport-services]]
- [[concepts/container-runtime]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/containerd]]
- [[entities/pods]]
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]

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