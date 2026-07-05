---
type: concept
title: "Manifest directory"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/static-pod_d72e06]]"
tags:
  - deployment
aliases:
  - static pod path
  - kubelet manifest directory
---
# Manifest directory

## Definition
The manifest directory is a filesystem location on each Kubernetes node where the kubelet agent stores and scans for pod definition files (in YAML or JSON format) to manage the lifecycle of Static Pods. This directory serves as the source of truth for node-local pod configurations that are not managed by the Kubernetes API server.

## Key Characteristics
- **Node-local location**: Exists on every node's filesystem, typically at paths like `/etc/kubernetes/manifests` or `/var/lib/kubelet/manifests`.
- **Periodic scanning**: The kubelet continuously monitors this directory for changes (additions, modifications, deletions of manifest files).
- **Declarative management**: Pod state is declared via files; the kubelet reconciles the actual state with the desired state defined in the manifests.
- **Configuration path**: The specific path is configured via kubelet flags (e.g., `--pod-manifest-path`) or in the kubelet configuration file (e.g., `staticPodPath`).
- **Static Pod only**: Exclusively used for managing Static Pods, not regular Pods orchestrated via the API server.

## Applications
- **Control plane bootstrapping**: Core Kubernetes components (API server, scheduler, controller-manager, etcd) are often deployed as Static Pods from manifest files in this directory during cluster setup.
- **Node-critical services**: Running essential node-level agents or daemons (e.g., monitoring, logging) that must start with the node and remain independent of the control plane.
- **Development and testing**: Quickly deploying pods directly on a node without involving the cluster API, useful for debugging or running local tools.
- **Disaster recovery**: Maintaining essential service definitions on nodes to ensure they can be brought up independently if the control plane is unavailable.

## Related Concepts
- [[concepts/tolerations]]
- [[concepts/taints]]

## Related Entities
- [[entities/kubelet]]
- [[entities/pods]]
- [[entities/kubernetes]]

## Mentions in Source
- "Check the kubelet startup flags:
    ```bash
    ps aux | grep kubelet
    # look for --pod-manifest-path=/etc/kubernetes/manifests
    ```" — [[concepts/static-pods]]
- "Or inspect `/var/lib/kubelet/config.yaml` for `staticPodPath: /etc/kubernetes/manifests`. (Razorops)" — [[concepts/static-pods]]