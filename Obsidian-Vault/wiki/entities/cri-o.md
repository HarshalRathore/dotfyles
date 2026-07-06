---
type: entity
title: CRI-O
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- product
aliases:
- Container Runtime Interface - Open
- CRI-O Container Runtime
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: CRI-O
---
# CRI-O

## Basic Information
- Type: Product
- Source: pods_c92b62

## Description
CRI-O is an open-source, lightweight container runtime specifically designed for Kubernetes. It implements the Kubernetes Container Runtime Interface (CRI) to provide a stable and minimal runtime for running containers. Unlike a full-featured engine such as [[entities/docker]], CRI-O is purpose-built for Kubernetes workloads, focusing exclusively on stability, security, and OCI compliance. It allows Kubernetes to use OCI-compliant container images and runtimes directly, enabling a pluggable and portable container runtime layer. As a key component in the Kubernetes ecosystem, CRI-O is discussed alongside alternatives like [[entities/containerd]] in official documentation regarding runtime selection for clusters.

## Related Entities
- [[entities/containerd]]
- [[entities/docker]]
- [[entities/open-container-initiative-oci]]
- Pods
- [[entities/kubelet]]

## Related Concepts
- [[concepts/container-runtime]]
- [[concepts/pod-network]]

## Mentions in Source
- "Because Kubernetes operates at the Pod level, you can switch container runtimes (Docker, containerd, CRI-O) without changing Pod specs, ensuring future portability and flexibility." — pods_c92b62
- "Because Kubernetes operates at the Pod level, you can swap out the underlying container runtime (Docker, containerd, CRI-O) transparently—your Pod specs remain unchanged." — pods_c92b62