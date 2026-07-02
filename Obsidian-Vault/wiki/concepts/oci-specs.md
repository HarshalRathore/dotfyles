---
summary: "The OCI defines two core, vendor-neutral specifications: the Image Specification (Image Spec), which dictates how container images are built, packaged, and distributed, and the Runtime Specificatio..."
type: concept
title: "Oci Specs"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "scheduling_f2b3ef"
  - "containerd-cri-etc_fb87d8"
---
## Description
The OCI defines two core, vendor-neutral specifications: the Image Specification (Image Spec), which dictates how container images are built, packaged, and distributed, and the Runtime Specification (Runtime Spec), which standardizes how runtimes execute containers. This standardization ensures that container images built with one tool, like Docker, can be run by any compliant runtime, such as containerd or runC. The OCI specs are foundational for the modern container ecosystem, underpinning the design of higher-level orchestration systems like Kubernetes, which relies on standards like the Container Runtime Interface (CRI) that is built upon OCI foundations. This enables a diverse yet compatible ecosystem for building, shipping, and running containers.

## Related Concepts
- [[concepts/container-runtime]]

## Related Entities
- [[entities/open-container-initiative-oci]]
- [[entities/containerd]]
- [[entities/docker]]
- [[entities/runc]]

## Mentions in Source

> **Source: scheduling_f2b3ef**
> - "
  - "
> - "
  - "

> **Source: containerd-cri-etc_fb87d8**
> - "
  - "
> - "