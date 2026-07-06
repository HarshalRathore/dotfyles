---
type: entity
title: Open Container Initiative Oci
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/containerd-cri-etc_fb87d8]]'
tags:
- organization
aliases:
- Open Container Standards
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Open Container Initiative Oci
---
## Description
The Open Container Initiative (OCI) is a governance structure and collaborative project under the Linux Foundation that establishes industry standards for container formats and runtime environments. Its primary purpose is to ensure interoperability between different container tools and platforms, which enabled the portability necessary for Kubernetes to support multiple runtimes beyond Docker. The OCI maintains two core specifications: the Image Specification, which defines how container images are built and formatted, and the Runtime Specification, which outlines how runtimes execute and manage containers. These standards are fundamental to cloud-native computing and enable a diverse ecosystem of tools, such as [[entities/containerd]] and the low-level runtime runC, to work together seamlessly.

## Related Entities
- [[entities/cncf]]
- [[entities/containerd]]
- [[entities/docker]]
- Kubernetes

## Related Concepts
- [[concepts/container-runtime]]
- [[concepts/oci-specs]]

## Mentions in Source
> **Source: scheduling_f2b3ef**
> - "Open Container Initiative (OCI) defines: Image Spec → how images are built, Runtime Spec → how runtimes launch containers."
> - "Containerd splits off as its own CNCF-graduated project, implements the OCI runtime spec, and supports CRI."

> **Source: containerd-cri-etc_fb87d8**
> - "Open Container Initiative (OCI) is a governance structure and project under the Linux Foundation that defines industry standards for container formats and runtimes."
> - "Defines two specs: Image Spec and Runtime Spec."
> - "CRI is based on Open Container Initiative (OCI) standards."