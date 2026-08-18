---
title: Agent Observability
category: concepts
tags:
- agent
- observability
- monitoring
- token-costs
- fleet-management
sources:
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
- 'https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-11-why-observability-belongs-inside-the-harness/'
- 'https://x.com/ashpreetbedi/status/2084301728363462919'
relationships:
- target: '[[concepts/agent-guardrails|Agent Guardrails]]'
  type: implements
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: related_to
- target: '[[concepts/agent-evaluations|Agent Evaluations]]'
  type: related_to
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-08-15T20:08:52Z
summary: "Monitoring and debugging agent fleets: token usage, costs, runtime traces — plus the harness lens (runtime vs process observability, sprint contracts, evaluator rubrics)."
---

# Agent Observability

Agent observability is the capability to monitor, understand, and debug the behavior of agent fleets in production. It encompasses token usage tracking, estimated cost monitoring, and runtime information for individual agents and agent runs. ^[extracted]

## Three Core Dimensions

**Token Usage:**
- Track how many tokens each agent consumes per run
- Identify agents or runs that are burning through tokens unexpectedly
- Budget and forecast costs across the fleet

**Estimated Costs:**
- Translate token usage into dollar costs
- Compare costs across different agent configurations
- Alert on cost anomalies

**Runtime Information:**
- Agent execution traces — what steps were taken, in what order
- Tool calls made, inputs and outputs
- Decision points and reasoning traces
- Ability to drill into any specific agent and agent run to verify expected behavior

## Fleet-Level vs Run-Level

Observability operates at two levels:

1. **Fleet-level** — aggregate metrics across all agents: total token consumption, cost trends, success rates, common failure patterns
2. **Run-level** — drill into individual agent runs to understand exactly what happened, why a specific decision was made, what tools were called

With whatever platform you choose, you should be able to dial into any specific agent and agent run to make sure your fleet is doing what you expect. ^[extracted]

## Relationship to Guardrails

Observability is one of the core guardrails for production agents. Without it, you cannot detect cost overruns, identify hallucination patterns, or debug unexpected agent behavior. Platform selection should evaluate whether observability comes built in or requires a separate vendor. ^[extracted]

## Sources

## 2026-08 — Learn Harness Engineering (Walking Labs): observability in the harness

The course's Lecture 11 ("Why Observability Belongs Inside the Harness") frames observability as a harness architecture property, not a monitoring-vendor add-on. It extends this page's fleet/run monitoring with the following claims: ^[extracted]

- **Two layers, both essential:** runtime observability (system-level signals — logs, traces, process events, health checks; answers "what did the system do") and process observability (harness decision artifacts — plans, sprint contracts, scoring rubrics, acceptance criteria; answers "why should this change be accepted"). ^[extracted]
- **Agents can't instrument themselves:** they don't know what they don't know, log formats are inconsistent, and process observability can't be solved by logging — the harness must collect runtime signals automatically (application lifecycle phases, feature-path execution, data flow, resource utilization, full-error context). ^[extracted]
- **Reliability is an evidence problem** (OpenAI/Anthropic framing): the harness must expose runtime behavior and evaluation signals in a form that can guide the next decision. ^[extracted]
- **Process-layer artifacts:** a sprint contract (scope, verification standards, exclusions) front-loads alignment between generator and evaluator; an evaluator rubric (A/B/C/D scoring per dimension) makes evaluation reproducible across evaluators. ^[extracted]
- **Standardize with OpenTelemetry:** one trace per harness session, a span per task, sub-spans per verification step — observability data then integrates with standard toolchains (Jaeger, Zipkin). ^[extracted]
- **Cost of missing observability:** cannot distinguish "correct" from "looks correct", non-reproducible evaluation, blind retries, and session-handoff diagnosis that wastes 30–50% of total session time (Anthropic's long-running-agent observations). ^[extracted]
- Anthropic's March 2026 three-agent experiment (planner/generator/evaluator, browser DAW task) ran 3h50m at $124.70; its evaluator was made reliable by reading its logs, finding where its judgment diverged from human judgment, and updating the QA prompt. ^[extracted]

Primary source: [[references/harness-lecture-11-observability-in-harness|Why Observability Belongs Inside the Harness — Lecture 11]]. Related: [[concepts/ai-harness|AI Agentic Harness]], [[concepts/open-telemetry|OpenTelemetry (OTEL)]].

### Observability as an Improvement Input

Bedi's recursive auto-improvement loop consumes the target agent's logs, tool calls, errors, and debug messages directly. The observability surface is therefore part of the repair loop: it supplies probe evidence and helps the coding agent choose whether to tighten a rule, add a rule, or swap a tool. ^[extracted] See [[concepts/recursive-auto-improvement]].

- [[references/aief2025-agents-500b-promise-donald-hruska-retool|AIEF2025 — How agents will unlock the $500B promise of AI]]
