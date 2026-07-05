---
type: entity
title: "Ceph"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/daemonsets_9f31ec]]"
tags:
  - product
aliases:
  - CephFS
  - RADOS
---
# Ceph

## Basic Information
- Type: product
- Source: daemonsets_9f31ec

## Description
Ceph is an open-source distributed storage system designed to provide highly reliable object, block, and file storage from a single unified cluster. Its architecture, based on the RADOS object store, allows it to scale horizontally across commodity hardware while maintaining data resilience and self-healing capabilities. In Kubernetes environments, Ceph is frequently deployed as a set of [[concepts/daemonsets]] to ensure storage daemons run on every node requiring access to local storage, which is critical for high-performance or low-latency workloads. It serves as a common solution for providing persistent volumes in clusters, particularly for stateful applications demanding high availability and scalability. Ceph integrates with Kubernetes via the Rook operator or traditional CephFS drivers.

## Related Entities
- [[entities/glusterd]]

## Related Concepts
- [[concepts/daemonsets]]
- [[concepts/node-local-agents]]

## Mentions in Source
- "**Storage daemons** (e.g., Ceph, Glusterd) that require node-local access." — daemonsets_9f31ec