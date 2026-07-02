---
type: entity
title: "Glusterd"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "daemonsets_9f31ec"
tags:
  - product
aliases:
  - glusterd
---
# Glusterd

## Basic Information
- Type: product
- Source: daemonsets_9f31ec

## Description
Glusterd is the management daemon component of GlusterFS, an open-source, scalable distributed file system. In the context of Kubernetes, it is a storage daemon that requires node-local access, making it a typical candidate for deployment as a DaemonSet. The daemon ensures that each node in a cluster participates in the distributed filesystem by aggregating disk resources across multiple nodes. This architecture provides highly available, fault-tolerant storage, which is beneficial for stateful applications running on Kubernetes. It coordinates volume management and replication across the cluster's storage nodes.

## Related Entities
- [[entities/cri-o]] (Note: While `ceph` is not in the provided list, it is the logical peer entity. The link is formatted for future creation.)
- [[entities/fluent-bit]]
- [[entities/docker]]
- [[entities/linux]]

## Related Concepts
- [[concepts/daemonsets]]
- [[concepts/node-local-agents]]

## Mentions in Source
- "**Storage daemons** (e.g., Ceph, Glusterd) that require node-local access." — daemonsets_9f31ec