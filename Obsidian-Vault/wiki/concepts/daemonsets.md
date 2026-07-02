---
summary: "A DaemonSet ensures one pod replica per node is deployed, automatically adjusting the pod count when nodes are added to or removed from the cluster. This makes it ideal for deploying node-level..."
type: concept
title: "Daemonsets"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "static-pod_d72e06"
  - "main-kubernetes-components_82b036"
  - "daemonsets_9f31ec"
---
## Description
A DaemonSet ensures one pod replica per node is deployed, automatically adjusting the pod count when nodes are added to or removed from the cluster. This makes it ideal for deploying node-level services like logging agents, monitoring collectors, and network proxies that need to run consistently across all cluster nodes. The controller manages the deployment using label selectors, allowing for selective scheduling on specific nodes using selectors and taint/toleration mechanisms. Since Kubernetes 1.12, DaemonSets utilize the default scheduler with node affinity for pod placement, ensuring pods are bound to nodes based on scheduling constraints. DaemonSets support rolling updates for managed pods, enabling controlled rollout of changes across all nodes. DaemonSet Pods are distinct from static Pods and operate independently of the kubelet's direct management. They are a core tool for implementing infrastructure and observability services that require a presence on every node in a Kubernetes cluster.

## Related Concepts
- [[concepts/static-pods]]: DaemonSet Pods are distinct from static Pods, which are managed directly by the kubelet and not the API server.
- ReplicaSets: Both are Kubernetes controllers, but ReplicaSets ensure a specified number of pod replicas run across the cluster in general, while DaemonSets specifically target node-level deployment.
- [[concepts/tolerations]]: DaemonSet Pods can be scheduled on nodes with taints if the pod spec includes matching tolerations.
- Taints: Nodes can be tainted to repel DaemonSet Pods, allowing fine-grained control over where they run.
- Pods: DaemonSets create and manage Pods as their fundamental workload unit.
- [[concepts/node-affinity]]: Since Kubernetes 1.12, DaemonSets use the default scheduler with node affinity to bind pods to eligible nodes based on scheduling constraints.
- Node Selector: DaemonSets can use node selectors to target specific nodes for pod placement.
- Rolling Updates: DaemonSets support rolling updates to propagate pod changes across nodes in a controlled manner.

## Related Entities
- [[entities/kubernetes]]: DaemonSets are a core workload API object within Kubernetes.
- [[entities/kubelet]]: The node agent that runs the Pod containers defined by the DaemonSet on each respective node.

## Mentions in Source
- "
  - " — static-pod_d72e06

> **Source: main-kubernetes-components_82b036**
> - "
  - "
> - "
  - "

> **Source: daemonsets_9f31ec**
> - "
  - "
> - "