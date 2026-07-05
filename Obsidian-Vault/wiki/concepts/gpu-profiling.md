---
title: GPU Profiling
category: concepts
tags: [gpu, profiling, performance, nvidia, cuda, observability, continuous-profiling]
summary: Technique for monitoring GPU utilization, memory, power, temperature, and per-process performance metrics to identify bottlenecks and optimize GPU resource usage.
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
  - target: "[[concepts/continuous-profiling.md]]"
    type: extends
  - target: "[[concepts/sampled-profiling.md]]"
    type: uses
  - target: "[[concepts/gpu-time-profiling.md]]"
    type: derives
  - target: "[[entities/nvidia.md]]"
    type: uses
---

# GPU Profiling

[[GPU Profiling]] is the practice of monitoring and analyzing GPU performance metrics to understand how compute resources are being used. It extends the broader practice of [[concepts/continuous-profiling.md|continuous profiling]] to the GPU domain.

## Key Metrics

GPU profiling collects several categories of metrics:

- **Node utilization**: Overall GPU utilization percentage over time
- **Per-process utilization**: Breakdown of GPU usage by individual processes, allowing identification of which applications are consuming GPU resources
- **Memory utilization**: GPU memory usage tracking
- **Clock speed**: GPU clock frequency monitoring
- **Power utilization**: Power draw compared against the GPU's power limit (dashed line threshold)
- **Temperature**: GPU temperature monitoring — sustained high temperatures (e.g., 80°C) cause significant GPU throttling
- **PCIe throughput**: Data transfer rates between CPU and GPU (negative values indicate receiving, positive indicate sending)

## Data Sources

GPU metrics are collected by querying NVIDIA and VMware APIs to extract low-level GPU telemetry. This data is then correlated with [[concepts/continuous-profiling.md|CPU profiles]] collected via [[concepts/ebpf.md|eBPF]] to provide a unified view of system performance.

## GPU Time Profiling

A specialized form of GPU profiling is [[concepts/gpu-time-profiling|GPU time profiling]], which measures the actual time spent by individual CUDA kernel functions on the GPU. This is achieved by instructing the Linux kernel to record the start and end times of CUDA stack executions, enabling flame charts that show GPU time consumption per function — not just CPU-side call stacks.

## Use Cases

GPU profiling helps teams:
- Identify underutilized GPUs and optimize resource allocation
- Reduce infrastructure costs by improving software efficiency (e.g., 10% improvement could eliminate 10% of server/GPU needs)
- Detect CPU bottlenecks that prevent GPUs from being fully utilized (e.g., CPU not feeding data fast enough)
- Monitor for thermal throttling and power limit violations
- Profile applications across languages including Python, Rust, Ruby, JVM-based languages, and any complete language integrating with CUDA
