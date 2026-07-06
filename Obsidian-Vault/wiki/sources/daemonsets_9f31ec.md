---
summary: A DaemonSet is a fundamental Kubernetes controller that guarantees the deployment of exactly one pod instance on each eligible node within a cluster. Its primary function is to manage **node-lo...
type: source
title: DaemonSet Controller in Kubernetes - Summary
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- DaemonSet
- ReplicaSet
- node-local agents
aliases:
- Kubernetes DaemonSet Documentation
- DaemonSets in K8s
contentHash: c2c-71a395d7
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# DaemonSet Controller in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
A DaemonSet is a fundamental Kubernetes controller that guarantees the deployment of exactly one pod instance on each eligible node within a cluster. Its primary function is to manage **node-local agents**—software that must run on every node to provide essential cluster-level services such as logging, monitoring, networking, and storage. Common examples include the log collector [[entities/fluentd]], the monitoring agent [[entities/prometheus-node-exporter]], and storage daemons like [[entities/ceph]]. The controller automatically handles pod lifecycle, adding pods to new nodes and removing them from deleted nodes. DaemonSets utilize scheduling mechanisms like node selectors, affinity, and tolerations to control placement, evolving in Kubernetes v1.12 to use the default scheduler with node affinity.

## Key Entities
- **[[entities/fluentd]]**: A popular logging agent deployed as a DaemonSet to collect logs from all nodes.
- **[[entities/fluent-bit]]**: A lightweight log processor often used as a DaemonSet in resource-constrained environments.
- **[[entities/prometheus-node-exporter]]**: A monitoring agent deployed as a DaemonSet to export node-level metrics.
- **[[entities/ceph]]**: A distributed storage system whose daemons are often managed by DaemonSets for node-local access.
- **[[entities/glusterd]]**: The GlusterFS daemon, typically deployed as a DaemonSet for distributed file storage.

## Key Concepts
- **[[concepts/daemonset]]**: The core controller ensuring one pod per targeted node for node-local workloads.
- **replication-controller-&-replicaset_285a2a**: A related controller for maintaining a pod count, often compared to highlight DaemonSet's node-targeting behavior.
- **[[concepts/node-local-agents]]**: The category of workloads (logging, monitoring, storage) ideally managed by DaemonSets.

## Main Points
- DaemonSets ensure one pod runs on each eligible node in a Kubernetes cluster.
- They are the standard method for deploying **node-local agents** like logging, monitoring, and storage daemons.
- Pod placement is controlled via node selectors, node affinity, or taints/tolerations in the pod spec.
- DaemonSets are managed using standard `kubectl` commands and support rolling updates.
- The lifecycle mechanism changed in Kubernetes v1.12 to use the default scheduler with node affinity.