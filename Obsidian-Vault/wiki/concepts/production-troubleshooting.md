---
title: Production Troubleshooting
tags:
- production
- debugging
- incident-response
- root-cause-analysis
- on-call
- observability
- ai
aliases:
- production-troubleshooting
- incident-debugging
- production-debugging
sources:
- 'https://www.youtube.com/watch?v=l6_nigiexzq'
summary: The process of diagnosing and resolving production incidents. Anish Agarwal argues this is the hardest part of software engineering to automate and will get worse as AI-generated code reduces human...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/aiops]]'
  type: contradicts
- target: '[[concepts/causal-machine-learning]]'
  type: related_to
- target: '[[concepts/agent-swarm]]'
  type: related_to
- target: '[[concepts/mttr]]'
  type: related_to
- target: '[[concepts/runbook-dependency]]'
  type: related_to
category: concepts
---

# Production Troubleshooting

Production troubleshooting is the process of diagnosing and resolving incidents when software breaks in production. It is one of three core categories of software engineering, alongside system design and development.

## The Three Categories

[[entities/anish-agarwal|Anish Agarwal]] frames software engineering as three intertwined categories:

1. **System design** — high-level architecture decisions
2. **Development** — writing business logic and DevOps
3. **Production troubleshooting** — debugging incidents

AI coding tools (Cursor, Windsurf, GitHub Copilot) are making development increasingly seamless, but troubleshooting is getting harder, not easier.

## Why It Gets Worse

Two compounding factors make troubleshooting increasingly difficult:

- **Context loss**: As AI systems write more code, humans lack understanding of the inner workings and the reasoning behind design decisions.
- **System complexity**: Systems grow more complex while human understanding grows thinner.

The result: troubleshooting becomes exponentially more painful, and engineers will spend most of their time on on-call and QA.

## The Status Quo Workflow

The typical troubleshooting process involves:

1. **Dashboard dumpster diving** — sifting through thousands of dashboards across tools like Grafana, Datadog, Splunk, Elastic, and Sentry to find the one that explains the failure.
2. **Change correlation** — connecting the failure to a specific PR or config change.
3. **Code analysis** — examining the codebase for clues.
4. **War room escalation** — bringing in 30-100 people in a Slack incident channel when initial investigation fails.

This loop repeats until resolution, and each iteration costs time and engineering bandwidth.

## MTTR

The key metric for troubleshooting effectiveness is [[concepts/mttr|MTTR]] (Mean Time to Resolution). Traversal.ai achieved a ~40% reduction in MTTR at [[entities/digitalocean|DigitalOcean]] through autonomous investigation using causal ML and agent swarms.

## Why Traditional Approaches Fail

- **AIOps** (statistical anomaly detection) produces too many false positives and more noise than signal.
- **LLM log analysis** is limited by context windows and poor numerical reasoning.
- **Runbook-based agents** fail because runbooks are deprecated upon creation and tool-calling loops are too slow for time-critical incidents.

## Proposed Solutions

- **Causal machine learning** — programmatically discovering cause-and-effect relationships from data.
- **Agent swarms** — thousands of parallel agentic tool calls for exhaustive telemetry search.
- **Reasoning models** — extracting semantic context from logs, metrics, and code.

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
