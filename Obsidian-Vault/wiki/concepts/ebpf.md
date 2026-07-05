---
title: eBPF
category: concepts
tags: [ebpf, linux, kernel, observability, profiling, low-overhead, no-instrumentation]
summary: Extended Berkeley Packet Filter — a Linux kernel technology that enables safe, low-overhead program execution in the kernel for observability, networking, and profiling without application instrumentation.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 0.7, inferred: 0.3, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/continuous-profiling.md]]"
    type: enables
  - target: "[[concepts/sampled-profiling.md]]"
    type: enables
  - target: "[[entities/polar-signals.md]]"
    type: uses
---

# eBPF (Extended Berkeley Packet Filter)

[[eBPF]] is a Linux kernel technology that enables safe, sandboxed programs to run in the kernel at runtime without modifying kernel source code or loading kernel modules. It has become a foundational technology for observability, networking, and profiling.

## Role in Profiling

[[eBPF]] is the mechanism that enables [[concepts/continuous-profiling.md|continuous profiling]] with minimal overhead. Because profiling is performed at the kernel level:

- **No application instrumentation required**: Applications don't need any code changes or libraries added
- **Low overhead**: Sampling at the kernel level achieves < 1% CPU overhead and ~4 MB memory overhead
- **Universal coverage**: Works across all languages (Python, Rust, Ruby, JVM-based languages, etc.) because it sees the kernel's view of execution stacks

## How It Enables Profiling

The Linux kernel, via [[concepts/ebpf.md|eBPF]], can:
- Sample execution stacks at configurable intervals (20-100 times per second)
- Track CUDA kernel lifecycle events (start/end timestamps for GPU time profiling)
- Collect memory allocation patterns
- Monitor system-wide performance without per-application changes

## Deployment

[[eBPF]]-based profiling tools can be deployed as:
- Standalone binaries (for direct host execution)
- Docker containers
- Kubernetes daemon sets (for cluster-wide profiling)

This makes it suitable for production environments where zero-downtime deployment and minimal disruption are critical.

## Historical Note

Profiling itself dates back to the 1970s with IBM researchers. [[eBPF]] emerged much later (circa 2014) and has revolutionized what's possible with kernel-level observability in Linux.
