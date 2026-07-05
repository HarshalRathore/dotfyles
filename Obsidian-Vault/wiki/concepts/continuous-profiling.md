---
title: Continuous Profiling
category: concepts
tags: [profiling, continuous, observability, performance, eBPF, production, cost-optimization]
summary: Running sampled profiling continuously in production to capture real-world performance patterns, enabling performance optimization and infrastructure cost reduction without application instrumentation.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/sampled-profiling.md]]"
    type: uses
  - target: "[[concepts/gpu-profiling.md]]"
    type: extends
  - target: "[[concepts/ebpf.md]]"
    type: uses
  - target: "[[entities/polar-signals.md]]"
    type: implements
---

# Continuous Profiling

[[Continuous Profiling]] is the practice of running sampled profiling continuously in production environments to capture real-world performance patterns. The core insight is that production is not the same as any test environment, and continuous profiling reveals what actually happens at scale.

## Key Principles

1. **Always-on monitoring**: Profiling runs continuously rather than during targeted sessions, ensuring that intermittent but important patterns are eventually captured
2. **Low overhead**: Uses [[concepts/sampled-profiling.md|sampled profiling]] at 20-100 samples/second with < 1% CPU overhead and ~4 MB memory overhead, making it safe for production
3. **No instrumentation required**: Linux [[concepts/ebpf.md|eBPF]] collects data at the kernel level, requiring zero changes to application code
4. **Cost-driven**: Performance improvements translate directly to infrastructure cost savings (e.g., 10% software improvement could eliminate 10% of server costs)

## What It Measures

Continuous profiling captures:
- CPU execution stacks showing which functions are called and for how long
- Memory allocation patterns and hotspots
- GPU utilization, per-process GPU usage, memory, power, temperature, and PCIe throughput
- Correlation between CPU activity and GPU utilization to identify bottlenecks

## Flame Charts

The primary visualization is the [[concepts/flame-chart.md|flame chart]], which shows call stacks over time with bar widths proportional to the time spent. Users can select time ranges (e.g., during GPU underutilization) and see what the CPU was doing during those periods.

## Historical Context

Profiling dates back to the 1970s with IBM researchers. Modern continuous profiling using eBPF emerged over the last 3-4 years, with GPU profiling added as a preview in early 2025.
