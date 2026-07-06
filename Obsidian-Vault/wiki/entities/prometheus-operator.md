---
title: Prometheus Operator
category: entities
tags: [prometheus, kubernetes, operator, open-source, monitoring, observability, cnf]
summary: Open-source Kubernetes operator for managing Prometheus installations. Maintained by Matthias Loibl at Polar Signals. Forms the open-source foundation of Polar Signals' profiling platform.
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
  - target: "[[entities/polar-signals]]"
    type: relates_to
  - target: "[[entities/matthias-loibl]]"
    type: relates_to
---

# Prometheus Operator

The [[entities/prometheus-operator]] is an open-source Kubernetes operator for managing [[entities/prometheus|Prometheus]] installations and configurations. It is maintained by [[entities/matthias-loibl|Matthias Loibl]] at [[entities/polar-signals|Polar Signals]] and forms the open-source foundation of Polar Signals' profiling platform.

The Prometheus Operator automates the deployment, configuration, and management of Prometheus instances on Kubernetes, handling tasks like service discovery, configuration generation, and monitoring of monitoring itself.

Polar Signals built their continuous profiling platform on top of the Prometheus ecosystem, extending it with CPU, memory, and GPU profiling capabilities using [[concepts/ebpf|eBPF]].
