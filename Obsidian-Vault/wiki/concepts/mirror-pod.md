---
type: concept
title: "Mirror Pod"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "static-pod_d72e06"
tags:
  - deployment
aliases:
  - Mirror Pods
  - Kubernetes Mirror Pod
---
# Mirror Pod

## Definition
A Mirror Pod is a representation of a Static Pod that the kubelet creates within the Kubernetes API server to provide visibility of node-managed pods via standard cluster tools like `kubectl`. It is a read-only object that mirrors the state of a Static Pod but is not managed by the API server's control plane components.

## Key Characteristics
- **Read-Only Object**: Cannot be modified, edited, or deleted via `kubectl` or the API server; all changes must be applied by modifying the manifest files on the corresponding node.
- **Node-Suffixed Naming**: Automatically suffixed with the node name (e.g., `-<nodeName>`) to differentiate mirrors from regular pods.
- **Visibility Bridge**: Allows Static Pods, which are managed directly by the kubelet on individual nodes, to appear in cluster-wide queries (`kubectl get pods`).
- **State-Reflecting**: The mirror's status (e.g., phase, conditions) reflects the actual state of the corresponding Static Pod running on the node.
- **No Controller Management**: Not owned or managed by any Kubernetes controllers (e.g., ReplicaSet, Deployment); exists purely as an API server representation.

## Applications
- **Cluster-Wide Observability**: Provides a unified view of all pods in a cluster, including those running as Static Pods on control plane nodes, using standard monitoring and debugging tools.
- **Operational Transparency**: Allows administrators to verify the existence and health of system-critical Static Pods (like `etcd`, `kube-apiserver`) through the Kubernetes API without accessing individual nodes.
- **Debugging & Validation**: Facilitates troubleshooting by making the status of node-local Static Pods visible from the cluster context, helping confirm they are running as expected.

## Related Concepts
- [[concepts/static-pods]]
- API Server

## Related Entities
- [[entities/kubelet]]
- [[entities/pods]]
- [[entities/kubectl]]

## Mentions in Source
- "On a clustered setup, the kubelet creates a “mirror” Pod in the API server so you can `kubectl get pods`—but that object is **read-only** and suffixed with `-<nodeName>`." — static-pod_d72e06
- "**Mirror Pods** show static Pods in `kubectl get pods`, but you **cannot** edit or delete them via kubectl—changes must be made to the files on the node." — static-pod_d72e06