---
title: Dex Horthy
tags:
- person
- speaker
- humanlayer
- ai-engineer
- agents
sources:
- 'https://www.youtube.com/watch?v=8kmatybvduw'
summary: Founder of HumanLayer, creator of the 12-Factor Agents framework for building reliable LLM applications. Author of the A2H (Agent-to-Human) Protocol for human-in-the-loop agent collaboration.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# Dex Horthy

Founder of [[entities/humanlayer|HumanLayer]], creator of the open-source [[concepts/12-factor-agents|12-Factor Agents]] framework — a codified set of patterns for building reliable LLM-based agents, grounded in software engineering principles rather than AI-specific abstractions. ^[extracted]

## Work

Dex's 12-Factor Agents project (published as a GitHub repository) gained significant traction — front page of Hacker News, 200K social impressions, 4,000 stars in roughly two months, and 14 active contributors. The project distills patterns from 100+ conversations with founders and engineers building production agent systems. ^[extracted]

At [[entities/humanlayer|HumanLayer]], he is developing the **A2H (Agent-to-Human) Protocol** — a standardization effort for how agents contact humans for approval, clarification, or escalation. ^[extracted]

## Key Contributions

- **12-Factor Agents** — Open-source framework codifying patterns for reliable agent applications: owning your prompts, owning your control flow, treating tool use as JSON+code, micro-agents, stateless state management, human contact patterns, multi-channel delivery, and scaffold-over-framework architecture. ^[extracted]
- **"Agents are just software"** — Core thesis arguing that agent development should apply standard software engineering practices (switch statements, while loops, REST APIs, databases) rather than treating agents as special abstractions. ^[extracted]
- **"LLMs are pure functions"** — Foundational insight that quality in agents comes from context engineering: getting the right tokens into the model determines output quality. ^[extracted]
- **Micro-agents in deterministic DAGs** — Pattern of embedding small (3-10 step) agent loops inside mostly deterministic workflows, applied at HumanLayer's own deployment pipeline. ^[extracted]
- **Scaffold-over-framework** — Proposal for create-12-factor-agent following the shad-cn model: generate scaffold code that teams own and modify, rather than wrapping with a framework that hides the hard AI parts. ^[extracted]
- **Error recovery patterns** — Specific technique: on tool failure, add error to context and retry; on success after errors, clear all pending errors rather than letting them accumulate. ^[extracted]

## Related

- [[entities/humanlayer]] — His company, building human-in-the-loop infrastructure for agents
- [[concepts/12-factor-agents]] — The framework he created
- [[concepts/micro-agents]] — Key pattern he advocates
- [[concepts/context-engineering]] — His foundational thesis about LLM quality
- [[concepts/agent-loop]] — His perspective on owning control flow and state

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
