---
title: AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals
category: references
tags: [aief2025, gpu-profiling, continuous-profiling, eBPF, cuda, flame-chart, sampled-profiling, polar-signals, kubestriker]
summary: Talk by Matthias Loibl (Director of Product and Cloud, Polar Signals) on continuous profiling for GPUs using eBPF, GPU time profiling, and flame charts at AI Engineer World's Fair 2025.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 1.0, inferred: 0.0, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/matthias-loibl]]"
    type: relates_to
  - target: "[[entities/polar-signals]]"
    type: relates_to
  - target: "[[concepts/gpu-profiling]]"
    type: relates_to
---

# AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals

**Speaker**: Matthias Loibl, Director of Product and Cloud at Polar Signals
**Event**: AI Engineer World's Fair 2025
**Video**: https://www.youtube.com/watch?v=wt8gzWR6auQ

## Summary

Matthias Loibl presented on maximizing GPU efficiency through continuous profiling, covering the evolution from traditional profiling to modern eBPF-based sampled profiling, GPU metrics collection, GPU time profiling, and the Kubestriker platform.

## Key Topics

### Profiling Fundamentals
- Profiling dates back to the 1970s with IBM researchers
- Two main approaches: [[concepts/tracing-profiling|tracing]] (records every event, high cost) vs [[concepts/sampled-profiling|sampled]] (samples at fixed intervals, low overhead)
- Sampled profiling achieves < 1% CPU overhead and ~4 MB memory overhead at 20-100 samples/second
- Running sampled profiling continuously in production captures the most significant patterns over time

### GPU Profiling Metrics
Polar Signals collects these GPU metrics via NVIDIA and VMware APIs:
- Node utilization (overall GPU usage percentage)
- Per-process GPU utilization (identifies which processes consume GPU resources)
- GPU memory utilization
- GPU clock speed
- Power utilization (with power limit threshold shown as dashed line)
- GPU temperature (sustained 80°C causes significant throttling)
- PCIe throughput (data transfer between CPU and GPU)

### GPU Time Profiling
- A new capability introduced at the time of the talk
- Linux kernel tracks CUDA kernel lifecycle events via eBPF
- Records start time when CUDA stack is pushed, end time when kernel terminates
- Duration = actual GPU time spent by each kernel function
- Displayed as [[concepts/flame-chart|flame charts]] where bar width = GPU time, not CPU time
- Shows CPU-side call stack (Python → CUDA) with GPU time at leaf functions

### Platform: Kubestriker
- Deployed as Kubernetes daemon set (manifest YAML + token)
- Also supports standalone binary and Docker
- No application instrumentation required (eBPF at kernel level)
- Works with any language integrating with CUDA (Python, Rust, Ruby, JVM)
- Correlates CPU profiles with GPU metrics for unified performance view
- Customers integrating GPU profiling: Turbo Puffer (vector database optimization)

### Cost Implications
- 10% software improvement could eliminate 10% of server/GPU costs
- Performance engineering directly translates to infrastructure savings
