---
title: "Traversal.ai"
tags:
  - company
  - ai
  - observability
  - incident-response
  - causal-machine-learning
  - agent-swarm
  - startup
  - ai-eng-worlds-fair-2025
aliases: [traversal, traversal-ai, Traversal]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: AI startup building autonomous production troubleshooting systems using causal ML, reasoning models, and agent swarms. Validated at DigitalOcean with 40% MTTR reduction. Integrates with all major observability tools, processing trillions of logs.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/anish-agarwal]]"
    type: related_to
  - target: "[[entities/matt-traversal]]"
    type: related_to
  - target: "[[entities/digitalocean]]"
    type: related_to
  - target: "[[concepts/causal-machine-learning]]"
    type: uses
  - target: "[[concepts/agent-swarm]]"
    type: uses
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
---

# Traversal.ai

Traversal.ai is an AI startup building **autonomous production troubleshooting** systems. Founded by Anish Agarwal (CEO, AI researcher) and Matt (first engineer, high-frequency trading background), the company targets the growing problem of production incident resolution as AI-generated code increases system complexity while reducing human context.

## Problem

Production troubleshooting is getting worse, not better, as AI coding tools make development seamless but leave engineers with thin understanding of system internals. The status quo — dashboard dumpster diving, war room escalation, runbook-based agent workflows — produces too many false positives and takes too long.

## Solution: Out-of-Sample Autonomous Troubleshooting

Traversal's core approach combines three elements:

1. **Causal machine learning** — programmatically discovering cause-and-effect relationships from telemetry data, distinguishing root causes from correlated failures.
2. **Reasoning models** — extracting rich semantic context from log fields, metric metadata, and source code.
3. **Agent swarms** — thousands of parallel agentic tool calls for exhaustive, efficient search across telemetry data.

The system orchestrates a swarm of expert AI SREs that sift through petabytes of observability data in parallel, returning findings in ~5 minutes to the incident Slack channel where engineers are already working.

## DigitalOcean Case Study

Traversal's work with [[entities/digitalocean|DigitalOcean]] (a cloud provider serving hundreds of thousands of customers) demonstrated:

- ~40% reduction in mean time to resolution (MTTR)
- Traversal's root cause finding confirmed correct by DigitalOcean engineers
- Post-resolution UI with cited observability data, confidence levels, reasoning explanations, and AI-generated impact maps
- Engineers can ask follow-up questions about stack impact

## Tech Ecosystem

- Integrates with **every major observability tool** (Grafana, Datadog, Splunk, Elastic, Sentry, etc.)
- Processes **trillions of logs** at scale
- Solves a needle-in-a-haystack problem: massive data set, tiny piece of information needed
- Currently focused on observability, but similar principles apply to network observability and cybersecurity

## Team

- AI researchers from top AI labs
- Engineers from top dev tools companies
- AI product engineers
- High-frequency quant finance traders (who understand the pain of production downtime)

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
