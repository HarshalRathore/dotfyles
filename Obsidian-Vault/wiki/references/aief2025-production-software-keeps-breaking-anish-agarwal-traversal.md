---
title: AIEF2025 - Production software keeps breaking and it will only get worse — Anish Agarwal, Traversal.ai
tags:
- production-troubleshooting
- causal-machine-learning
- agent-swarm
- aiops
- observability
- mttr
- conference-talk
- ai-eng-worlds-fair-2025
sources:
- 'https://www.youtube.com/watch?v=l6_nigiexzq'
summary: Traversal.ai founders Anish Agarwal and Matt argue that AI coding tools will make production troubleshooting exponentially harder, and present causal ML + reasoning models + agent swarms as the sol...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/traversal-ai]]'
  type: related_to
- target: '[[entities/anish-agarwal]]'
  type: related_to
- target: '[[entities/digitalocean]]'
  type: related_to
- target: '[[concepts/causal-machine-learning]]'
  type: related_to
- target: '[[concepts/agent-swarm]]'
  type: related_to
- target: '[[concepts/aiops]]'
  type: contradicts
- target: '[[concepts/production-troubleshooting]]'
  type: related_to
category: references
---

# AIEF2025 - Production software keeps breaking and it will only get worse — Anish Agarwal, Traversal.ai

> Talk at AI Engineer World's Fair 2025. Anish Agarwal (CEO, Traversal.ai) and Matt (co-founder) present the case that AI coding tools will worsen production troubleshooting and introduce Traversal's causal ML + agent swarm approach, validated at DigitalOcean.

## Summary

Anish frames software engineering as three categories: **system design**, **development**, and **production troubleshooting**. AI coding tools (Cursor, Windsurf, GitHub Copilot) are narrowing development to the point of seamlessness, but the other two categories — especially troubleshooting — are getting worse, not better. He argues that existing approaches (AIOps, LLM log analysis, React-style agents) all have fundamental flaws, and proposes a combined approach of causal machine learning, reasoning models, and agent swarms. Matt then presents a DigitalOcean case study showing 40% MTTR reduction.

## The Three Categories of Software Engineering

Anish divides software engineering into three categories:

1. **System design** — architecting the system at a high level. The talk he hopes AI will free engineers to focus on.
2. **Development** — writing business logic and DevOps. AI tools are making this increasingly seamless.
3. **Production troubleshooting** — debugging incidents when software breaks. This is where the problem lies.

The promise of AI tools is that engineers will focus on creative system design work. The reality, Anish argues, is the opposite: most time will be spent on on-call and troubleshooting.

## Why Troubleshooting Gets Worse

Two compounding factors:

- **Context loss**: As AI systems write more code, humans have less understanding of the inner workings. They lack the mental model of why code was written the way it was.
- **System complexity**: Systems are getting more complex (as seen in other talks at the event), while human understanding is getting thinner.

The result: troubleshooting becomes exponentially more painful, and engineers will spend most of their time in QA and on-call roles.

## The Status Quo Troubleshooting Workflow

Anish describes the current incident response process as:

1. **Dashboard dumpster diving** — sifting through thousands of Grafana/Datadog/Splunk dashboards to find the one that explains the failure.
2. **Connecting to a change** — root cause analysis by linking the failure to a specific PR or config change.
3. **Code staring** — aggressively examining the codebase hoping for inspiration.
4. **War room escalation** — bringing in 30-100 people in a Slack incident channel when the initial investigation fails.

This loop repeats until resolved, and it's only going to get worse.

## Why Existing Approaches Fail

### AIOps (traditional ML anomaly detection)

- Too many false positives in complex, dynamic production systems
- Numerical representations of data are not representative enough
- Produces more noise than signal — thousands of alerts, maybe one useful
- Fundamentally correlation-based, not causation-based

### LLM log analysis (ChatGPT-style)

- Context window limitations: production systems generate petabytes of data, potentially trillions of logs
- Even with infinite context, the data doesn't fit into memory or a cluster (hence retention policies)
- LLMs have good semantic understanding but poor numerical representation of data
- You can't put trillions of logs into an LLM context

### React-style agents with runbooks

- Runbooks are deprecated the moment they're created
- Simple tool-calling loops take too long — days if they don't time out
- Incidents need resolution in 2-5 minutes for real utility
- Agents assume access to meta-workflows that don't exist in practice

## Traversal's Approach: Out-of-Sample Autonomous Troubleshooting

Traversal aims for **out-of-sample autonomous troubleshooting** — troubleshooting a new incident from first principles, without having seen it before. Their approach combines three elements:

1. **Statistics — Causal Machine Learning**: Programmatically discovering cause-and-effect relationships from data. Critical because correlated failures (not root causes) dominate production incidents.
2. **Semantics — Reasoning Models**: Pushing the limits of what LLMs can extract from rich semantic context — log fields, metric metadata, and source code.
3. **Agent Control Flow — Agent Swarms**: Thousands of parallel agentic tool calls providing exhaustive search across telemetry data efficiently.

The workflow: causal ML + agent swarms identify promising leads from the sea of data; vector search + code agents connect leads to specific system changes; agents pull the right team with the right context at the right time.

## DigitalOcean Case Study

Matt presents Traversal's work with DigitalOcean, a cloud provider serving hundreds of thousands of customers:

- **Pre-Traversal**: On-call engineers thrown into incident Slack channels with 40-60 other engineers, searching through hundreds of millions of metrics across thousands of dashboards and tens of billions of logs from thousands of services. Resolution takes hours.
- **Post-Traversal**: Traversal's ambient AI begins investigation with the same minimal context as engineers, orchestrates a swarm of expert AI SREs to sift through petabytes of observability data in parallel. Returns results in ~5 minutes to the incident Slack channel.
- **Results**: ~40% reduction in mean time to resolution (MTTR). Traversal's finding was confirmed correct by DigitalOcean engineers.
- **Post-resolution**: Engineers can explore a Traversal UI with cited observability data, confidence levels for root cause candidates, reasoning explanations, and an AI-generated impact map. Can ask follow-up questions about stack impact.

## Traversal's Tech Ecosystem

- Integrates with **every major observability tool** at massive scale
- Processes **trillions of logs**
- Solves a **needle-in-a-haystack** problem: massive data set, tiny piece of information needed
- Focus on observability now, but similar principles apply to **network observability** and **cybersecurity**
- Team includes AI researchers from top labs, engineers from top dev tools companies, and high-frequency quant finance traders

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
