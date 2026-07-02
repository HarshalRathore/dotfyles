---
type: concept
title: "Self-Managed Kubernetes"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "introduction_804367"
tags:
  - deployment
aliases:
  - 自建Kubernetes
  - 裸金属Kubernetes
---
# Self-Managed Kubernetes

## Definition
Self-Managed Kubernetes is a deployment model where an organization takes full responsibility for installing, configuring, and maintaining all components of a Kubernetes cluster, including the control plane and worker nodes. This approach contrasts with using managed Kubernetes services (e.g., EKS, GKE, AKS) where a cloud provider handles the control plane and underlying infrastructure management.

## Key Characteristics
- **Complete Control:** The user has full administrative control over the cluster's lifecycle, versioning, configuration, and security.
- **Full Operational Responsibility:** The organization is responsible for all aspects of installation, patching, upgrades, scaling, networking, storage, and monitoring.
- **Flexibility:** Allows for deep customization of the control plane, worker nodes, and networking plugins to meet specific technical or compliance requirements.
- **Increased Complexity:** Requires significant expertise in Linux systems, networking, and Kubernetes internals to operate successfully and securely.
- **Cost Implications:** While it may reduce direct service fees, it incurs operational costs in personnel, tools, and management overhead.

## Applications
- **Learning and Education:** Ideal for gaining in-depth, hands-on understanding of Kubernetes architecture and operations.
- **On-Premises or Private Cloud Deployments:** Essential when deploying Kubernetes in data centers without a managed cloud service offering.
- **Specific Compliance or Regulatory Requirements:** When strict data sovereignty or control requirements prohibit the use of third-party managed services.
- **Highly Customized Environments:** For scenarios requiring non-standard configurations, specialized networking, or integration with unique infrastructure.
- **Infrastructure as Code (IaC) Practice:** Serves as a foundation for building fully automated, version-controlled cluster deployment pipelines.

## Related Concepts
- [[concepts/control-plane-node]]
- [[worker-node]]
- [[concepts/container-runtime]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/containerd]]
- [[entities/kubelet]]
- [[entities/etcd]]
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Mentions in Source
- Self-Managed Kubernetes (you build and control it) — introduction_804367
- Your team chooses to build a self-managed Kubernetes cluster — for maximum flexibility and learning. — introduction_804367