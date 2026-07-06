---
type: entity
title: runC
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/containerd-cri-etc_fb87d8]]'
tags:
- product
aliases:
- run container
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: runC
---
# runC

## Basic Information
- Type: product
- Source: containerd-cri-etc_fb87d8

## Description
runC is a lightweight and portable container runtime that implements the OCI runtime specification. As a low-level container runtime, it is designed to directly interact with the host Linux kernel to create and manage the underlying container processes. It serves as the execution layer within the container ecosystem, providing the foundational primitives for container lifecycles. Higher-level runtimes and orchestrators, such as the [[entities/docker]] engine and the [[entities/containerd]] daemon, delegate the actual container creation and execution to runC. Its adherence to the [[concepts/oci-specs]] ensures compatibility and interoperability across different container platforms. runC is a core component of the broader CNCF ecosystem.

## Related Entities
- [[entities/containerd]]
- [[entities/docker]]
- [[entities/cri-o]]

## Related Concepts
- [[concepts/oci-specs]]
- [[concepts/low-level-container-runtime]]
- [[concepts/high-level-container-runtime]]

## Mentions in Source
- "Uses runC as low-level runtime, managed by containerd daemon" — containerd-cri-etc_fb87d8