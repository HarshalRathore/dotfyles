---
title: Sampled Profiling
category: concepts
tags: [profiling, sampling, performance, overhead, eBPF, continuous-profiling]
summary: A profiling approach that samples system state at fixed intervals (e.g., 20-100 times per second) rather than recording every event, achieving low overhead while still capturing relevant patterns.
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
  - target: "[[concepts/continuous-profiling.md]]"
    type: implements
  - target: "[[concepts/tracing-profiling.md]]"
    type: contrasts
---

# Sampled Profiling

[[Sampled Profiling]] is a technique where the profiler samples system state at fixed intervals rather than recording every event. This contrasts with [[concepts/tracing-profiling.md|tracing profiling]], which records every event continuously but at high cost and data volume.

## How It Works

The profiler takes snapshots of the current execution stack at a configurable frequency — commonly 20 to 100 times per second for CPU profiling. Each snapshot captures the current call stack, memory allocation patterns, or other monitored state.

## Trade-offs

| Aspect | Tracing Profiling | Sampled Profiling |
|--------|-------------------|-------------------|
| Overhead | High | Low (< 1% CPU, ~4 MB memory) |
| Data volume | Very large | Manageable |
| Completeness | Every event captured | Some events missed |
| Continuity | Hard to run continuously | Can run always-on in production |
| Cost | High storage/compute | Low |

## Key Insight

While sampled profiling will miss individual rare events (a stack that executed once is unlikely to be relevant anyway), running it continuously in production ensures that over time, the most significant patterns and bottlenecks are captured. This makes it suitable for always-on production monitoring.

## Implementation

Linux [[concepts/ebpf.md|eBPF]] enables sampled profiling with minimal overhead because the sampling is performed by the kernel itself, requiring no application instrumentation.
