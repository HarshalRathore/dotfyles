---
title: Prometheus
category: entities
tags: [prometheus, monitoring, metrics, open-source, cnf, observability, time-series]
summary: Open-source monitoring and alerting toolkit from CNCF. Time-series database with powerful query language (PromQL). Foundation for Polar Signals' profiling platform.
sources:
  - "AIEF2025 - Continuous Profiling for GPUs — Matthias Loibl, Polar Signals - https://www.youtube.com/watch?v=wt8gzWR6auQ"
provenance: { extracted: 0.6, inferred: 0.4, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/polar-signals]]"
    type: relates_to
  - target: "[[entities/prometheus-operator]]"
    type: relates_to
---

# Prometheus

[[entities/prometheus]] is an open-source monitoring and alerting toolkit from the Cloud Native Computing Foundation (CNCF). It is a time-series database with a powerful query language (PromQL) and is widely used for infrastructure and application monitoring.

Polar Signals extends the Prometheus ecosystem with continuous profiling capabilities, adding CPU, memory, and GPU profiling on top of the metrics collection infrastructure. The [[entities/prometheus-operator|Prometheus Operator]] is maintained by Polar Signals' [[entities/matthias-loibl|Matthias Loibl]] and serves as the open-source foundation of their platform.
