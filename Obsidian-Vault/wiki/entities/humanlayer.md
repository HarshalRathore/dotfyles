---
title: "HumanLayer"
tags:
  - company
  - infrastructure
  - agents
  - human-in-the-loop
  - opensource
sources:
  - "[[sources/watchv=8kmatybvduw]]"
summary: "Company building open-source infrastructure for agent-to-human communication, including the A2H (Agent-to-Human) Protocol. Founded by Dex Horthy, creator of the 12-Factor Agents framework."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# HumanLayer

Company building infrastructure for reliable agent-to-human communication. Founded by [[entities/dex-horthy|Dex Horthy]], creator of the [[concepts/12-factor-agents|12-Factor Agents]] framework.

## Mission

HumanLayer's thesis: the hard problems in building agents are the AI-specific ones (prompts, flow, tokens), and tooling should take away the other hard parts (infrastructure, communication, state management) so builders can focus on the AI quality problems. ^[extracted]

The company is developing the **A2H (Agent-to-Human) Protocol** — a standardization effort for how agents contact humans for approval, clarification, or escalation. This addresses the "contacting humans with tools" pattern where the decision to escalate to a human is pushed to the first natural language output token. ^[extracted]

## Open Source

HumanLayer maintains the [12-Factor Agents](https://github.com/humanlayer/12-factor-agents) open-source repository, which has gained significant community traction (front page of Hacker News, 4,000+ stars, 14 active contributors). ^[extracted]

## Internal Usage

HumanLayer runs its own deployment pipeline using the micro-agents pattern: a deterministic CI/CD workflow with small agent loops (3-10 steps) at decision points. Their deploy bot manages the full cycle — PR merge detection, deployment ordering, human approval, rollout, and end-to-end testing — all within a Slack interface. ^[extracted]

## Related

- [[entities/dex-horthy]] — Founder
- [[concepts/12-factor-agents]] — Framework created by the founder
- [[concepts/micro-agents]] — Architecture pattern used internally
- [[concepts/context-engineering]] — Foundational AI quality thesis
- [[concepts/human-in-the-loop-regulated-ai]] — Related human-in-the-loop patterns

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
