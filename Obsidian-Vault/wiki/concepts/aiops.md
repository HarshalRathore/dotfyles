---
title: "AIOps"
tags:
  - aiops
  - anomaly-detection
  - machine-learning
  - observability
  - false-positives
  - statistics
aliases: [aiops, ai-ops, AIOps]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: The use of traditional machine learning and statistical anomaly detection for IT operations and incident management. Criticized by Traversal.ai for producing too many false positives and more noise than signal in complex production systems.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/causal-machine-learning]]"
    type: contradicts
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
  - target: "[[concepts/agent-swarm]]"
    type: related_to
---

# AIOps

**AIOps** (AI for IT Operations) refers to the use of traditional machine learning and statistical anomaly detection techniques to monitor, diagnose, and manage IT systems and production incidents. It has been the dominant AI approach to operations for years but is criticized for fundamental limitations.

## How It Works

AIOps systems:

- Collect numerical representations of telemetry data (metrics, logs, traces)
- Apply statistical models to detect anomalies
- Generate alerts when anomalies exceed thresholds
- Attempt to correlate alerts across systems

## Problems with AIOps

[[entities/anish-agarwal|Anish Agarwal]] identifies fundamental flaws:

1. **Too many false positives** — Production systems are complex and dynamic; statistical models produce alerts that don't correspond to real problems.

2. **More noise than signal** — Thousands of alerts fire during an incident, but only one or two might be useful. There's no way to know which.

3. **Not representative enough** — Numerical representations of complex system behavior are insufficient to capture the full picture.

4. **Correlation, not causation** — AIOps detects statistical anomalies but cannot distinguish root causes from correlated downstream failures.

## Result

AIOps has led to alert fatigue rather than incident resolution. Engineers still need to perform dashboard dumpster diving and root cause analysis manually, despite the AI-generated alerts.

## Traversal's Alternative

Traversal proposes [[concepts/causal-machine-learning|causal machine learning]] as a superior statistical foundation — one that explicitly models cause-and-effect relationships rather than just detecting anomalies. This is combined with [[concepts/agent-swarm|agent swarms]] for exhaustive search and reasoning models for semantic understanding.

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
