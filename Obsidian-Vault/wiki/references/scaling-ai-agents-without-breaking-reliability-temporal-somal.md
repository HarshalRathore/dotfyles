---
title: "Scaling AI Agents Without Breaking Reliability — Preeti Somal, Temporal"
category: references
tags: [ai-engineering, reliability, orchestration, workflow, agents, conference-talk, ai-eng-worlds-fair-2025]
aliases: [Temporal AI agents talk 2025, Somal Temporal 2025]
sources:
  - "AI Engineer World's Fair 2025 talk - Scaling AI Agents Without Breaking Reliability — Preeti Somal, Temporal - https://www.youtube.com/watch?v=1izYWsokr9s"
summary: "Preeti Somal of Temporal argues that agent reliability should be handled at the orchestration platform level using Temporal's workflow abstraction, not by improving individual LLM reliability."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03T00:00:00Z
updated: 2026-07-03T00:00:00Z
---

# Scaling AI Agents Without Breaking Reliability — Preeti Somal, Temporal

> Talk at AI Engineer World's Fair 2025. Preeti Somal, engineer at Temporal, presents the case for using Temporal's workflow orchestration platform to build reliable AI agents. The core argument: agents are complex distributed systems, and reliability is best achieved by outsourcing it to a battle-tested platform rather than building it into application code.

## Key Points

### The Problem: Agents Are Unreliable Distributed Systems

- Agents are complex distributed systems that need orchestration, durability, and reliability ^[extracted]
- They require handling state over long periods, parallel execution, human interaction, and tool calling ^[extracted]
- LLMs are inherently unreliable — no one in the audience reported 100% LLM success rates ^[extracted]
- Difficult to debug and test in pre-production; insight into what agents are doing is hard to achieve ^[extracted]

### The Solution: Temporal's Workflow Abstractions

- Temporal's mission: "outsource the reliability and scalability parts of building a complex distributed application seamlessly" ^[extracted]
- Language-idiomatic SDKs (Python has overtaken other languages in Temporal usage, reflecting Python's dominance in AI) ^[extracted]
- Battle-tested: over a decade in production, used in mission-critical applications including payments ^[extracted]
- Key abstractions map directly to agent needs: workflows, signals, queries, activities, workflow history ^[extracted]
- Workflow history provides automatic visibility and an audit trail for debugging and compliance ^[extracted]

### Impact

- Customers deploy agent applications in production in weeks ^[extracted]
- Up to 6x faster feature delivery velocity after adopting Temporal ^[extracted]
- Automatic scaling without writing scale-handling logic ^[extracted]
- Developers eliminated all "plumbing code" (manual retry, error handling, state management) from their business logic ^[extracted]

### Customer Examples

- **Dust** — Building AI agents on Temporal, provided a customer quote ^[extracted]
- **Gorgias** — Customer service AI for Reebok, Timbuk2, Glossier, running agents on Temporal in production ^[extracted]

### Architecture

Temporal workers run in the developer's own environment, integrated with existing CI/CD practices. Temporal Cloud manages execution state, call stack, failures, and retries. ^[extracted] The developer codes the workflow using Temporal SDKs and never writes reliability infrastructure. ^[extracted]

## Architecture Diagram (Conceptual)

```
Developer Environment (Worker)          Temporal Cloud
┌─────────────────────────────┐    ┌──────────────────────┐
│ Workflow (code)             │    │ Execution State       │
│  ├── Signal: receive input  │───→│ Call Stack            │
│  ├── Activity: call LLM     │    │ Failure & Retry Mgmt  │
│  ├── Activity: invoke tool  │    │ Durability            │
│  ├── Query: inspect state   │    │ Workflow History      │
│  └── Signal: human approval │    └──────────────────────┘
└─────────────────────────────┘
```

(Conceptual based on talk description — not an official Temporal diagram.) ^[inferred]

## Related Pages

- [[entities/temporal]] — The company and platform
- [[entities/preeti-somal]] — The speaker
- [[concepts/temporal-workflow-orchestration]] — The core workflow abstraction pattern for AI agents
- [[concepts/agent-reliability-challenge]] — The problem space this talk addresses
- [[concepts/agentic-architecture]] — Agentic architecture patterns, complemented by Temporal's orchestration layer
- [[concepts/human-in-the-loop-regulated-ai]] — Human-in-the-loop needs mentioned in the talk
- [[concepts/agent-loop]] — The agent loop pattern that workflows orchestrate

## Sources

- Video: <https://www.youtube.com/watch?v=1izYWsokr9s>
