---
title: Agent Evaluation Pipeline
tags:
- concept
- agent
- evaluation
- ci-cd
- testing
- quality
aliases:
- CI/CD for agents
- agent CI pipeline
- agent red teaming
- agent observability
sources:
- 'https://www.youtube.com/watch?v=7hrw6rtxahc'
summary: Integrated evaluation, red teaming, and observability pipeline for agents — evaluated on every update via CI/CD, with continuous monitoring regardless of deployment platform.
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Agent Evaluation Pipeline

An agent evaluation pipeline is the set of integrated tools and processes for holding AI agents accountable: evaluation SDK integrated into CI/CD, red teaming agents for adversarial testing, and continuous observability via OpenTelemetry. ^[extracted] The approach was demonstrated by [[entities/microsoft|Microsoft]] at AI Engineer World's Fair 2025. ^[extracted]

## Three Pillars

### 1. Evaluation SDK
A dedicated SDK for evaluating agent outputs, integrated directly into the CI/CD pipeline so that every agent update is automatically evaluated before deployment. ^[extracted]

### 2. Red Teaming Agents
Specialized agents designed to adversarially test other agents — probing for vulnerabilities, failures, and safety issues. ^[extracted]

### 3. Continuous Observability
OpenTelemetry (Otel) integration provides continuous monitoring of agent behavior regardless of where the agent was built or deployed. Telemetry is not optional — it's a platform requirement. ^[extracted]

## Relationship to User Simulation Testing

[[concepts/user-simulation-testing|User simulation testing]] (from Sierra's [[concepts/agent-development-lifecycle|Agent Development Lifecycle]]) complements the evaluation pipeline at a different stage: simulation testing validates the agent's end-to-end conversational ability pre-production, while the evaluation pipeline provides automated CI/CD quality gates for every update across the agent's lifetime. ^[inferred]

## Relationship to [[concepts/evaluation-first-development]]

[[concepts/evaluation-first-development|Evaluation-first development]] is the methodology for building individual AI applications with early and continuous evaluation. The agent evaluation pipeline extends this to the platform level — making evaluation a built-in infrastructure capability for all agents running on the platform, not a per-project choice. ^[inferred]

## Related

- [[concepts/agent-factory]]
- [[concepts/evaluation-first-development]]
- [[entities/azure-ai-foundry]]
- [[concepts/rag-evaluation]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
