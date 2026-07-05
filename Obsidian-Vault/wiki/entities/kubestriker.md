---
title: Kubestriker
category: entities
tags: [kubestriker, polar-signals, profiling, kubernetes, saas, observability, eBPF]
summary: Polar Signals' SaaS platform for continuous profiling on Kubernetes. Deployed as a daemon set, collects CPU, memory, and GPU profiles via eBPF. Provides flame chart visualization and GPU time profiling.
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
  - target: "[[entities/polar-signals.md]]"
    type: implements
  - target: "[[concepts/continuous-profiling.md]]"
    type: implements
  - target: "[[concepts/gpu-profiling.md]]"
    type: implements
  - target: "[[concepts/gpu-time-profiling.md]]"
    type: implements
---

# Kubestriker

[[Kubestriker]] is Polar Signals' SaaS platform for continuous profiling on Kubernetes and Linux hosts. It is the commercial product built on top of the [[entities/prometheus-operator.md|Prometheus Operator]] and [[concepts/ebpf.md|eBPF]] technology.

## Deployment

Kubestriker can be deployed in multiple ways:
- **Kubernetes daemon set**: Install via a manifest YAML file with an authentication token — profiles all nodes in the cluster automatically
- **Standalone binary**: Run directly on a host machine
- **Docker container**: Run in a Docker container for containerized environments

## Capabilities

Kubestriker provides:
- [[concepts/continuous-profiling.md|Continuous CPU profiling]] via eBPF sampling (20-100 samples/second)
- [[concepts/continuous-profiling.md|Memory profiling]] with allocation pattern tracking
- [[concepts/gpu-profiling|GPU profiling]] with metrics for utilization, memory, power, temperature, and PCIe throughput
- [[concepts/gpu-time-profiling|GPU time profiling]] tracking actual CUDA kernel execution time
- [[concepts/flame-chart.md|Flame chart]] visualization with interactive time range selection
- Cross-correlation of CPU profiles with GPU metrics

## Integration

Customers already using Kubestriker for CPU and memory profiling are integrating GPU profiling into their platforms. Notable integrations include vector databases like Turbo Puffer for optimizing their vector engine performance.

## Pricing

Polar Signals offers free consultations (2 hours) for the first 10 people who visit their booth at conferences, and discounts for seed and Series A startups.
