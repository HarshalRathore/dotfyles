---
title: CUDA
category: entities
tags: [cuda, nvidia, gpu-computing, parallel-computing, kernel, programming-model]
summary: NVIDIA's parallel computing platform and programming model for GPU-accelerated computing. Enables CPU-side code (Python, Rust, etc.) to launch and manage GPU kernel execution.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/nvidia.md]]"
    type: implements
  - target: "[[concepts/gpu-time-profiling.md]]"
    type: relates_to
---

# CUDA

[[CUDA]] (Compute Unified Device Architecture) is NVIDIA's parallel computing platform and programming model that enables developers to use GPU-accelerated computing. It provides a programming interface (libcuda) that allows CPU-side code in various languages (Python, Rust, etc.) to launch and manage GPU kernel execution.

In the context of [[concepts/gpu-time-profiling|GPU time profiling]], CUDA kernel launches are tracked by the Linux kernel via [[concepts/ebpf.md|eBPF]] — when a CUDA stack is pushed onto the CPU, the kernel records the start time, and when the kernel terminates, it records the end time, enabling measurement of actual GPU time per function.

The `libcuda` library is the interface through which applications (including Python via PyTorch, TensorFlow, etc.) interact with NVIDIA GPUs to launch compute kernels.
