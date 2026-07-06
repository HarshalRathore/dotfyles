---
title: Tracing Profiling
category: concepts
tags: [profiling, tracing, observability, eBPF, performance, continuous-profiling]
summary: A profiling approach that records every event continuously for maximum visibility, at the cost of high overhead and data volume. Contrasts with sampled profiling.
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
  - target: "[[concepts/sampled-profiling]]"
    type: contrasts
  - target: "[[concepts/continuous-profiling]]"
    type: relates_to
---

# Tracing Profiling

[[concepts/tracing-profiling]] is a profiling approach that records every single event continuously, providing the most complete possible view of system behavior. It is one of two main profiling paradigms, the other being [[concepts/sampled-profiling|sampled profiling]].

## Characteristics

- **Completeness**: Captures every event, providing maximum visibility into system behavior
- **Overhead**: High — significant CPU, memory, and storage costs
- **Data volume**: Very large, making it difficult to process and store continuously
- **Use case**: Best for targeted analysis sessions rather than always-on production monitoring

## Contrast with Sampled Profiling

Tracing profiling is generally impractical for continuous production use due to its high overhead and data volume. [[concepts/sampled-profiling|Sampled profiling]] is preferred for always-on monitoring because it achieves acceptable overhead (< 1% CPU, ~4 MB memory) while still capturing relevant patterns when run continuously.

## Historical Context

Profiling itself dates back to the 1970s, with early work by IBM researchers attempting to understand computer behavior. Tracing was the original approach before sampled methods became practical with modern eBPF-based tools.
