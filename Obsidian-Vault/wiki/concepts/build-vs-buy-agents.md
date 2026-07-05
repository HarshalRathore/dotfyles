---
title: "Build vs Buy Agents"
category: concepts
tags:
  - agent
  - strategy
  - enterprise-ai
  - engineering-decision
  - platform-selection
sources:
  - "[[sources/watchv=lqq_lcbajcc]]"
relationships:
  - target: "[[concepts/agent-platform|Agent Platform]]"
    type: related_to
  - target: "[[concepts/langgraph|LangGraph]]"
    type: related_to
  - target: "[[concepts/agent-guardrails|Agent Guardrails]]"
    type: related_to
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Build vs Buy Agents

The build-vs-buy decision for agentic AI systems is fundamentally an engineering trade-off analysis. With four distinct approaches available — scratch-built, framework-based, managed platform, and verticalized — choosing the right path requires evaluating the agent's strategic importance, data sensitivity, timeline constraints, and total cost of ownership. ^[extracted]

## The Four Buckets

| Approach | Control | Lift | Example |
|----------|---------|------|---------|
| **Build from scratch** | Maximal | High | Custom agent with fine-tuned LLMs, AI/ML engineers on team |
| **Framework** (e.g., LangGraph) | High | Medium | Stateful multi-actor applications with custom memory modes |
| **Managed platform** (e.g., Retool Agents) | Opinionated | Low | Abstracted hosting, built-in connectors, fleet observability |
| **Verticalized** | Minimal | Minimal | Single-use-case agents dialed in for one task |

## Decision Criteria

**Build when:**
- The agent is part of your core product
- It gives your business its competitive edge
- You have hard SLAs or work with regulated/sensitive data
- You have AI/ML engineering capacity

**Buy when:**
- Building a commodity workflow
- You need it in days, not quarters
- You don't want engineers debugging business logic at 2 AM

## Platform Evaluation Checklist

When going the managed platform route, evaluate:

1. **Connector breadth** — Does it connect to Salesforce, Databricks, Snowflake out of the box?
2. **Permissioning** — Is access control built in?
3. **Compliance** — SOC 2, audit trails, regulatory support
4. **Observability** — Token usage, cost tracking, runtime info per agent run
5. **Evals** — Built-in evaluation infrastructure or separate vendor?
6. **Total cost** — Token costs + infrastructure costs + engineering costs

## Risk Assessment

The decision also involves a risk assessment: do you want your engineers debugging business logic, or up at 2 AM troubleshooting OAuth integrations? This framing highlights the hidden engineering costs of building agents from scratch. ^[extracted]

## Government Build-vs-Buy

Government organizations face a distinct build-vs-buy equation shaped by classified data, compliance burdens, and real-world impact. At [[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]], the approach is pragmatic both/and: build custom models and domain-specific agent capabilities internally while partnering with frontier labs (OpenAI), academia (UC schools), and hardware vendors (NVIDIA, HPE) for capabilities that cannot be developed in-house.

Key constraints that favor building: classified data that cannot leave secure environments, domain-specific tools (50-60 years of scientific computational models), HPC execution requirements, and the real-world consequences of agent failures. Constraints that favor partnering: frontier model capability gaps, security-clearance-limited hiring, HPC infrastructure costs, and speed-to-capability. See [[concepts/government-build-vs-buy-ai]] for the full framework.

## Sources

- [[references/aief2025-agents-500b-promise-donald-hruska-retool|AIEF2025 — How agents will unlock the $500B promise of AI]]
