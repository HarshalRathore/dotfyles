---
summary: "This source explains **Static Pods** in the [[concepts/static-pods]] platform, which are Pods managed directly by the [[entities/kubelet]] on a single node, bypassing the "
tags:
  - Static Pods
  - Mirror Pod
  - Manifest directory
  - "Bootstrapping control-plane"
  - ReplicaSets
  - DaemonSets
  - "Node-bound"
  - "Self-reconciling"
aliases:
  - Static Pods
  - Static Pod Manifests
contentHash: "e92-02c964a6"
generation_complete: True
---
# Static Pods in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source explains **Static Pods** in the [[concepts/static-pods]] platform, which are Pods managed directly by the [[entities/kubelet]] on a single node, bypassing the [[concepts/kube-apiserver]] and controllers. Key characteristics include being **[[concepts/node-bound]]** and **[[concepts/self-reconciling]]**. For cluster visibility, the kubelet creates a read-only [[concepts/mirror-pod]] in the API server. The primary use case is **[[concepts/bootstrapping-control-plane]]** components like [[entities/etcd]], [[concepts/kube-scheduler]], and [[entities/kube-controller-manager]]. Configuration involves placing pod YAML files in a **[[concepts/manifest-directory]]** on the node. Notably, static Pods are unaffected by standard Kubernetes controllers like [[concepts/replicasets]] or [[concepts/daemonsets]].

## Key Entities
- **[[entities/kubernetes]]**: The platform where Static Pods are a feature.
- **[[entities/kubelet]]**: The node agent that directly manages Static Pods.
- **[[concepts/kube-apiserver]]**: The control plane component that can be bootstrapped as a Static Pod.
- **[[entities/etcd]]**: The backing store often deployed as a Static Pod during cluster setup.

## Key Concepts
- **[[concepts/static-pods]]**: The core topic, defined by direct kubelet management.
- **[[concepts/mirror-pod]]**: The API server representation of a Static Pod.
- **[[concepts/manifest-directory]]**: The filesystem location for Static Pod definitions.
- **[[concepts/bootstrapping-control-plane]]**: The primary use case for Static Pods.

## Main Points
- Static Pods are managed directly by the kubelet on a single node, independent of the API server.
- They are defined in files on the node and are inherently **node-bound** and **self-reconciling**.
- A **Mirror Pod** is created in the API server for visibility but is read-only.
- They are essential for bootstrapping the Kubernetes control plane components on master nodes.
- They are not managed or affected by standard Kubernetes controllers like schedulers or ReplicaSets.