---
title: "Platform vs Application Teams"
category: concepts
tags:
  - platform-engineering
  - organization
  - hub-and-spoke
  - metrics
  - aief2025
aliases:
  - platform teams
  - application teams
  - llm team structure
summary: "LLM teams split into platform teams (owning infrastructure, costs, latency) and application teams (owning evals and user outcomes) in a hub-and-spoke model. Each cares about different metrics."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/platform-engineering|Platform Engineering]]"
    type: extends
  - target: "[[concepts/observability-for-enterprise-trust|Observability for Enterprise Trust]]"
    type: relates_to
  - target: "[[concepts/ai-engineering|AI Engineering]]"
    type: organizational-context-for
---

# Platform vs Application Teams

LLM teams split into two specialized niches with different responsibilities and metrics: **platform teams** and **application teams**, organized in a hub-and-spoke model. ^[extracted]

## Platform Teams

Platform teams own the infrastructure layer:

- **Model gateway routers** — The interface pattern behind which all models sit
- **Costs** — Model spend optimization
- **Latency** — Response time performance
- **Infrastructure** — The shared platform that application teams build on

These teams are analogous to ML/data science teams in traditional org structures. ^[extracted]

## Application Teams

Application teams sit on the outer edge of the hub-and-spoke model, working directly for the business side:

- **Evals** — Measuring whether the application works for users
- **User outcomes** — Quality, relevance, user satisfaction
- **Application logic** — Prompts, orchestration, domain-specific behavior

These teams are analogous to product/engineering teams in traditional orgs. ^[extracted]

## Different Metrics, Different Evals

The split means different teams care about different evaluation dimensions:

| Team | Cares About | Eval Focus |
|------|------------|------------|
| Platform | Costs, latency, throughput | Infrastructure health, model performance |
| Application | Evals, user experience | Output quality, user satisfaction |

This distinction has implications for eval design: platform teams need infrastructure-level observability, while application teams need output-level evaluation. ^[inferred]

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
