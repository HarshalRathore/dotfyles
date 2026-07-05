---
title: GPU Time Profiling
category: concepts
tags: [gpu, profiling, cuda, time-measurement, kernel-profiling, flame-chart, eBPF]
summary: A specialized GPU profiling technique that measures actual GPU time spent by individual CUDA kernel functions, correlating CPU-side call stacks with GPU execution duration.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/gpu-profiling.md]]"
    type: extends
  - target: "[[concepts/flame-chart.md]]"
    type: uses
  - target: "[[entities/cuda.md]]"
    type: uses
  - target: "[[concepts/ebpf.md]]"
    type: uses
---

# GPU Time Profiling

[[GPU Time Profiling]] is a specialized form of [[concepts/gpu-profiling.md|GPU profiling]] that measures the actual time individual CUDA kernel functions spend executing on the GPU — not just CPU-side call stack information. This is more valuable than CPU profiling alone because it reveals where GPU compute time is actually consumed.

## How It Works

The technique works by instructing the Linux kernel to track CUDA stack executions:

1. When a CUDA stack is pushed onto the CPU (i.e., a CUDA kernel launch is initiated), the kernel records the start timestamp
2. When the CUDA kernel terminates, the kernel records the end timestamp
3. The duration between these timestamps gives the actual GPU time spent by that kernel function

## Flame Chart Visualization

The result is displayed as a [[concepts/flame-chart.md|flame chart]] where:
- The stack trace shows the CPU-side call path (e.g., Python `main()` → CUDA library calls)
- The **width** of each stack segment represents the actual GPU time spent by the leaf CUDA function
- Different colors represent different binaries (e.g., blue for Python, other colors for CUDA libraries)

## Why It Matters

CPU profiling alone often shows the CPU as "busy" — processing data, managing threads, etc. — but doesn't reveal whether the GPU is the bottleneck. GPU time profiling directly answers: "Which CUDA functions are consuming the most GPU time?" This enables targeted optimization of the actual compute-heavy operations rather than guessing.

## Limitations

This technique requires Linux with [[concepts/ebpf.md|eBPF]] support and visibility into CUDA kernel lifecycle events. It works with any language that integrates with CUDA (Python, Rust, etc.) but requires the kernel to track CUDA stack events.
