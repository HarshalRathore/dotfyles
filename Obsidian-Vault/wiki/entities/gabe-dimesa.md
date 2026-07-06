---
title: Gabe DeMesa
category: entities
tags: [person, OpenGov, OG-assist, agent-production]
aliases: [gabe, gabe demesa, gabe dimesa, Gabe DeMesa]
relationships:
  - target: '[[concepts/human-in-the-loop]]'
    type: discussed
  - target: '[[entities/opengov]]'
    type: engineer_at
  - target: '[[concepts/agent-evaluation-pipeline]]'
    type: discussed
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Software engineer at OpenGov on the AI agents team, co-built OG assist, presented on agents in production at WF2026.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Gabe DeMesa

**Gabe DeMesa** is a software engineer at **OpenGov** on the AI agents team. He was one of the people who helped build **OG Assist**, OpenGov's AI assistant that powers all of their product suites. He presented on "Agents in Production: How OpenGov Built and Scaled OG Assist" at the AI Engineer World's Fair 2026. ^[extracted]

## Overview

Gabe works on the AI agents team at OpenGov, a software company on a mission to power more effective and accountable government. OpenGov sells ERP software covering budgeting, procurement, asset management, and permitting. Gabe was one of the principal builders of OG Assist, an AI assistant accessible via a button in the navigation bar across all OpenGov products. ^[extracted]

## WF2026 Talk: Agents in Production

At WF2026, Gabe gave a detailed walkthrough of the architecture, tools, and practices behind OG Assist. The talk covered the full stack: agent harness, evals, observability, traces, tools, and skills. ^[extracted]

### Key architectural decisions

- **Bet on Effect**: The team made a big bet on the **Effect** TypeScript library for their core agent loop. It paid off in dividends -- Effect provides built-in schema (similar to Zod), error handling, logging, tracing, and concurrency. The team moved from LangGraph to their own Effect-native agent loop to have full agency over every lever. ^[extracted]
- **Agent-to-Agent (A2A) Protocol**: They adopted Google's open A2A protocol for agent intercommunication, which helped define agent routes, schemas, and agent cards (name, description, etc.) that both front-end and back-end consume and produce. ^[extracted]
- **Human-in-the-Loop**: The system deterministically interrupts the agent loop when a tool call requires human approval, showing a UI where the human can explicitly accept or reject the action. This ensures safety, especially for mutating operations. ^[extracted]
- **Sandboxing**: Agents execute code or create files inside a sandboxed environment. ^[extracted]
- **Feedback & Evals**: Thumbs up/down mechanism combined with automated evals that run against real completions. Agents are tested against whether they hit the right tools and did what they were supposed to do. ^[extracted]

## Key Claims

- **"Shipping is the start, not the finish"** -- Gabe emphasized that collecting feedback and iterating continuously is how they improve OG Assist. ^[extracted]
- Having full control of your own agent loop unlocks the full capabilities of the model and gives the team full agency. ^[extracted]
- The A2A protocol with rigorous specs drove alignment -- once the team aligned with the spec, they knew the contract that front-end and back-end would both consume and produce. ^[extracted]
- OG Assist agents can see what's on the screen and take action on the page (perception agents for UI). ^[extracted]

## Related

- [[concepts/human-in-the-loop|Human in the Loop]] — the safety pattern Gabe implemented
- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — the eval approach Gabe described
- [[entities/opengov|OpenGov]] — the company where Gabe works

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
