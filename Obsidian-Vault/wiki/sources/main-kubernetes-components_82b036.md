---
summary: This source document provides a foundational overview of the Kubernetes architecture, explaining its core components and how they collaborate to manage containerized applications. It details th...
type: source
title: Kubernetes Core Concepts and Components - Summary
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- Ingress
- ConfigMaps
- Secrets
- Volumes
- StatefulSets
- Control Plane
- Container Runtime
- Desired State
- Scheduler
aliases:
- Kubernetes Architecture Overview
- k8s core concepts
contentHash: 1445-7dfca0e2
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Kubernetes Core Concepts and Components - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source document provides a foundational overview of the Kubernetes architecture, explaining its core components and how they collaborate to manage containerized applications. It details the fundamental building block, the [[concepts/volumes]], and discusses networking via [[concepts/volumes]] and external access management through [[concepts/ingress]]. The guide covers application configuration using [[concepts/configmaps]] and [[concepts/secrets]], and persistent storage with [[concepts/volumes]]. It outlines workload management patterns, contrasting stateless applications with [[entities/deployments]] and stateful applications with [[concepts/statefulsets]], alongside node-specific scheduling via [[concepts/daemonsets]]. The cluster architecture is defined by [[concepts/worker-node]] (running pods and core node agents) and [[entities/master-node]], which host the [[concepts/control-plane]]. The Control Plane components—[[concepts/kubernetes-api-server]], [[concepts/scheduler]], [[concepts/controller-manager]], and [[entities/etcd]]—are explained, highlighting the system's declarative model based on [[concepts/desired-state]].

## Key Entities
- [[concepts/worker-node]]: The machine running application containers, requiring a [[concepts/container-runtime]], [[entities/kubelet]], and [[concepts/kube-proxy]].
- [[entities/master-node]]: Manages cluster state and runs the [[concepts/control-plane]] processes.
- [[entities/kubelet]]: Agent on worker nodes managing pod scheduling and resource allocation.
- [[concepts/kube-proxy]]: Network proxy on worker nodes handling service-to-pod communication.
- [[entities/deployments]]: Manages replicas of stateless pods.
- [[concepts/daemonsets]]: Ensures one pod runs on each node in the cluster.
- [[entities/etcd]]: Distributed key-value store that is the cluster's state database.
- [[concepts/controller-manager]]: Runs controller loops to reconcile current state with [[concepts/desired-state]].
- [[concepts/kubernetes-api-server]]: The central gateway validating and managing all cluster interactions.

## Key Concepts
- [[concepts/ingress]]: Manages external HTTP/HTTPS access to services via routing rules.
- [[concepts/configmaps]]: Stores non-sensitive configuration data for applications.
- [[concepts/secrets]]: Stores sensitive data like passwords and API keys.
- [[concepts/volumes]]: Attaches persistent storage to pods.
- [[concepts/statefulsets]]: Manages stateful applications requiring stable identity and storage.
- [[concepts/control-plane]]: The set of components managing cluster state and making global decisions.
- [[concepts/container-runtime]]: Software responsible for running containers on a node.
- [[concepts/desired-state]]: The user-defined configuration that controllers work to maintain.
- [[concepts/scheduler]]: Assigns newly created pods to appropriate nodes.

## Main Points
- Pods are the smallest deployable units in Kubernetes and are ephemeral; thus, stable networking is provided by Services.
- The Control Plane, hosted on Master Nodes, manages the cluster through the API Server, Scheduler, Controller Manager, and the etcd data store.
- Kubernetes uses a declarative model where controllers continuously work to match the cluster's actual state to the user-defined [[concepts/desired-state]].
- Workloads are managed through specialized objects like [[entities/deployments]] (stateless), [[concepts/statefulsets]] (stateful), and [[concepts/daemonsets]] (per-node system tasks).
- Configuration and secrets are externalized from container images using [[concepts/configmaps]] and [[concepts/secrets]].