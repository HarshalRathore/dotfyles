---
title: Flame Chart
category: concepts
tags: [profiling, visualization, flame-chart, performance, call-stack, cpu-profiling, gpu-profiling]
summary: A visualization of call stacks over time where bar widths represent time spent, used in both CPU and GPU profiling to identify performance hotspots and bottlenecks.
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
  - target: "[[concepts/continuous-profiling.md]]"
    type: uses
  - target: "[[concepts/gpu-time-profiling.md]]"
    type: uses
---

# Flame Chart

A [[Flame Chart]] is a visualization technique used in profiling to display call stacks over time. Each horizontal bar represents a function in the call stack, and the width of the bar is proportional to the time spent in that function.

## Structure

- **Stack hierarchy**: Functions are nested vertically, showing the call chain from top-level entry point down to leaf functions
- **Bar width**: Represents the time (or sample count) spent in each function — wider bars indicate more time consumed
- **Color coding**: Different colors can represent different binaries, modules, or execution contexts
- **Time axis**: Typically flows left to right, showing the temporal progression of execution

## Use in CPU Profiling

In CPU profiling, flame charts show which functions are consuming CPU time. Users can select a time range (e.g., during a period of GPU underutilization) and see what the CPU was doing during that window. This helps identify CPU-side bottlenecks that may be preventing GPUs from being fully utilized.

## Use in GPU Time Profiling

In [[concepts/gpu-time-profiling|GPU time profiling]], flame charts show the CPU-side call stack (e.g., Python → CUDA library calls) but the bar width represents the actual GPU time spent by the leaf CUDA kernel function. This bridges the gap between CPU-side code organization and GPU-side execution time.

## Interactive Features

Modern flame chart tools (like Polar Signals' Kubestriker) allow users to:
- Drag and drop to select a time range
- Click on individual bars to drill down
- Correlate with GPU metrics (utilization, memory, power, temperature) during the selected period
