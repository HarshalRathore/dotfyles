---
type: concept
title: "Node-Local Agents"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/daemonsets_9f31ec]]"
tags:
  - deployment
aliases:
  - "node-local workloads"
---
# Node-Local Agents

## Definition
Node-local agents are software components or workloads that are designed to run on every node within a cluster, providing essential services that require access to node-specific resources and data. They are typically deployed using a Kubernetes DaemonSet to guarantee a single running instance per node.

## Key Characteristics
- **Mandatory per-node presence:** They ensure a required service is available on every node in the cluster.
- **Node-level access:** They interact directly with the host's filesystem, network stack, or hardware resources.
- **Deployment model:** Commonly implemented as a DaemonSet for automatic scheduling and lifecycle management.
- **Critical for observability and data services:** They are fundamental for logging, monitoring, networking, and distributed storage at the node level.
- **Operate as privileged or with special permissions:** Often require elevated access to function correctly.

## Applications
- **Cluster Logging:** Agents like Fluentd or Fluent Bit are deployed to collect log files from all nodes.
- **Node Monitoring:** Tools such as Prometheus Node Exporter gather hardware and OS metrics from each node.
- **Cluster Networking:** Certain CNI plugins or network service meshes require a daemon on each node to manage network rules.
- **Distributed Storage:** Storage daemons like Ceph (running OSDs) or Glusterd operate on nodes to manage local storage pools for the cluster.

## Related Concepts
- [[concepts/daemonsets]]
- [[concepts/nodeselector]]
- [[concepts/node-affinity]]
- [[concepts/taints]]
- [[concepts/tolerations]]

## Related Entities
- [[entities/fluentd]]
- [[entities/prometheus-node-exporter]]
- [[entities/ceph]]
- [[entities/glusterd]]

## Mentions in Source
- "Ideal for deploying **node-local agents** (logging, monitoring, networking) that must run everywhere." — daemonsets_9f31ec
- "**Storage daemons** (e.g., Ceph, Glusterd) that require node-local access." — daemonsets_9f31ec