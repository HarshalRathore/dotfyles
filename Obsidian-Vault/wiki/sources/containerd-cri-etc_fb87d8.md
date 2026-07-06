---
summary: This source details the historical and architectural evolution of container runtimes within Kubernetes. It begins with the initial tight coupling between Kubernetes and the Docker platform. To supp...
type: source
title: 'Container Runtimes in Kubernetes: Docker, Containerd, and Related Tools - Summary'
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- Container Runtime Interface (CRI)
- OCI Specifications
- dockershim
- containerd
- high-level container runtime
- low-level container runtime
- ctr
- nerdctl
- crictl
aliases:
- 'Container Runtimes in Kubernetes: Docker, Containerd, and Related Tools'
- CRI and Containerd Overview
contentHash: auto-fill-mr0vx781
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
source_file: ""
tags: [Container Runtime Interface (CRI), OCI Specifications, dockershim, containerd, high-level container runtime, low-level container runtime, ctr, nerdctl, crictl]
aliases: ["Container Runtimes in Kubernetes: Docker, Containerd, and Related Tools", "CRI and Containerd Overview"]
contentHash: "auto-fill-mr0vqvkc"





# Container Runtimes in Kubernetes: Docker, Containerd, and Related Tools - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source details the historical and architectural evolution of container runtimes within Kubernetes. It begins with the initial tight coupling between Kubernetes and the [[entities/docker]] platform. To support a wider ecosystem, Kubernetes introduced the [[Container Runtime Interface (CRI)|Container Runtime Interface (CRI)], a standard built on [[concepts/oci-specifications]]. Since [[entities/docker]] did not natively implement CRI, Kubernetes used a temporary adapter called [[concepts/dockershim]] until its removal in [[entities/kubernetes-v1-24]]. The primary beneficiary of this shift is [[entities/containerd]], a graduated CNCF project and CRI-compliant [[concepts/high-level-container-runtime]] that is now directly installable on nodes. The source concludes by comparing three command-line tools for interacting with [[entities/containerd]] and CRI runtimes: `ctr`, `nerdctl`, and `crictl`.

## Key Entities
- [[entities/docker]]
- [[entities/containerd]]
- [[entities/kubernetes]]
- [[entities/open-container-initiative-oci]]
- [[entities/ctr]]
- [[entities/nerdctl]]
- [[entities/crictl]]
- [[entities/kubernetes-v1-24]]
- [[entities/cncf]]

## Key Concepts
- [[concepts/container-runtime-interface-cri]]
- [[concepts/oci-specifications]]
- [[concepts/dockershim]]
- [[concepts/high-level-container-runtime]]
- [[concepts/low-level-container-runtime]]

## Main Points
- Kubernetes evolved from exclusive [[entities/docker]] support to a runtime-agnostic model via the [[concepts/container-runtime-interface-cri]] standard.
- [[concepts/oci-specifications]] for images and runtimes ensure portability, allowing images built with one tool to run on any compliant runtime.
- The removal of [[concepts/dockershim]] in [[entities/kubernetes-v1-24]] ended direct runtime support for the [[entities/docker]] but did not break existing container images.
- [[entities/containerd]] is now a leading standalone, CNCF-graduated runtime for Kubernetes nodes.
- Different CLI tools serve distinct purposes: `ctr` for low-level debugging, `nerdctl` for a Docker-like experience, and `crictl` for Kubernetes CRI runtime inspection.