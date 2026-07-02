---
summary: "This source details the evolution of container runtimes within [[entities/kubernetes]], tracing the path from Docker as the sole runtime to the standardized, pluggable architecture e..."
type: source
title: "Container Runtimes and Multiple Schedulers in Kubernetes - Summary"
created: "2026-06-30"
updated: "2026-06-30"
lifecycle: draft
base_confidence: 0.7
source_file: ""
tags:
  - container runtime
  - CRI
  - OCI specs
  - dockershim
  - containerd
  - nerdctl
  - crictl
  - ctr
  - multiple schedulers
  - scheduling framework
  - scheduler profiles
aliases:
  - Kubernetes Scheduling and Container Runtimes
  - "CRI, OCI, and Scheduler Architecture"
contentHash: "auto-fill-mr0vx781"
generation_complete: True
---
source_file: ""
tags: [container runtime, CRI, OCI specs, dockershim, containerd, nerdctl, crictl, ctr, multiple schedulers, scheduling framework, scheduler profiles]
aliases: ["Kubernetes Scheduling and Container Runtimes", "CRI, OCI, and Scheduler Architecture"]
contentHash: "auto-fill-mr0vqvkj"





# Container Runtimes and Multiple Schedulers in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source details the evolution of container runtimes within [[entities/kubernetes]], tracing the path from Docker as the sole runtime to the standardized, pluggable architecture enabled by the [[concepts/container-runtime-interface-cri]] and [[concepts/oci-specs]]. It explains the role of the now-removed [[dockershim]] and the rise of [[entities/containerd]] as a standalone, CRI-compliant runtime, alongside essential CLI tools like [[entities/nerdctl]], [[entities/crictl]], and [[entities/ctr]]. The second half provides a deep dive into [[concepts/multiple-schedulers]] in Kubernetes, explaining the  with its key extension points, the scheduling and binding cycles, and methods for deploying custom schedulers and [[concepts/scheduler-profiles]].

## Key Entities
- [[entities/docker]]: The original all-in-one container platform and historical Kubernetes runtime.
- [[entities/containerd]]: The standalone, CNCF-graduated container runtime that replaced Docker as the default for Kubernetes.
- [[entities/kubernetes]]: The container orchestration system that standardized on CRI for runtime pluggability and supports a pluggable scheduler architecture.
- [[entities/nerdctl]]: A Docker-like CLI for managing containers directly with containerd.
- [[entities/crictl]]: A CLI tool for CRI-compatible runtime inspection and Kubernetes node troubleshooting.
- [[entities/ctr]]: A low-level, debug-oriented CLI bundled with containerd.

## Key Concepts
- [[concepts/container-runtime-interface-cri]]: The standard API that enables Kubernetes to work with multiple container runtimes.
- [[concepts/oci-specs]]: The standards defining container image formats and runtime behavior.
- [[dockershim]]: The temporary compatibility layer removed in Kubernetes v1.24.
- : The pluggable architecture underlying the Kubernetes scheduler, defined by extension points, a scheduling cycle, and a binding cycle.
- [[concepts/multiple-schedulers]]: The ability to run and use several scheduler instances or [[concepts/scheduler-profiles]] side-by-side for customized Pod placement.

## Main Points
- Kubernetes transitioned from Docker to a CRI-based runtime model, with containerd now serving as the primary standalone runtime.
- The removal of dockershim in v1.24 was a key step in aligning Kubernetes with OCI and CRI standards.
- Understanding tools like nerdctl, crictl, and ctr is essential for managing and debugging containers on a containerd-based Kubernetes node.
- Kubernetes scheduling is highly customizable via the Scheduling Framework, which processes Pods through a queue, a node-selection cycle, and a binding cycle.
- Custom scheduling logic can be implemented by deploying multiple schedulers or by configuring multiple scheduler profiles within a single kube-scheduler process.