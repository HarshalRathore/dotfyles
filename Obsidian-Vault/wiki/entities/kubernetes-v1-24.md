---
type: entity
title: Kubernetes v1.24
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/containerd-cri-etc_fb87d8]]'
tags:
- event
aliases:
- v1.24 release
- Kubernetes v1.24
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Kubernetes v1.24
---
# Kubernetes v1.24

## Basic Information
- Type: event
- Source: containerd-cri-etc_fb87d8

## Description
Kubernetes v1.24 was a major release of the Kubernetes container orchestration platform, marked by the significant milestone of removing the dockershim. This release officially ended direct support for [[entities/docker]] as a container runtime, requiring users to transition to other [[concepts/container-runtime]] implementations such as [[entities/containerd]] or [[entities/cri-o]]. The change was part of a broader effort to decouple Kubernetes from Docker-specific components, although images built with Docker continued to work because they adhere to the [[entities/open-container-initiative-oci]] (Open Container Initiative) image format standard.

## Related Entities
- Kubernetes
- [[entities/docker]]
- [[entities/containerd]]
- [[entities/cri-o]]
- [[entities/open-container-initiative-oci]]

## Related Concepts
- [[concepts/container-runtime]]
- [[concepts/dockershim]]

## Mentions in Source
- "Removal in v1.24: Dockershim removed; Docker Engine no longer a direct Kubernetes runtime — containerd-cri-etc_fb87d8"

## Related Pages
- This page covers the Kubernetes v1.24 release, where kubeadm join is used to add nodes to a cluster initialized with kubeadm init. [[concepts/kubeadm-join]]
- Kubernetes v1.24 introduced several improvements to the RBAC system, including enhancements to resources like ClusterRoleBinding for more granular access control. [[concepts/clusterrolebinding]]