---
title: AIEF2025 — Conquering Agent Chaos — Rick Blalock, Agentuity
category: references
tags:
- aief2025
- agent-deployment
- agent-infrastructure
- agent-chaos
- agentuity
- serverless-timeouts
- agent-observability
- framework-agnostic
aliases:
- Conquering Agent Chaos
- Rick Blalock AIEF2025
summary: 'Rick Blalock (Agentuity) presents the core deployment challenges of AI agents — serverless timeouts, statefulness, gateway wiring — and the infrastructure primitives agents need: long runtimes, pau...'
sources:
- AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/aief2025]]'
  type: part_of
- target: '[[entities/rick-blalock]]'
  type: speaker
- target: '[[entities/agentuity]]'
  type: presented_by
---

## Conquering Agent Chaos

**Speaker:** Rick Blalock, Founder of Agentuity
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=yASxPZ-tZe0

### TL;DR

Rick Blalock identifies the three most common agent deployment problems — serverless timeouts, statefulness mismatches, and inter-agent gateway wiring — based on conversations with University of Florida students/professors and his own experience building qualitative research agents. He then outlines the six infrastructure primitives agents need to succeed, demonstrates Agentuity's framework-agnostic platform with a live demo, and shows how agents can communicate across frameworks via internal networking.

### Problem Statement

Blalock opened with a story from the University of Florida, where he spoke with professors and students deploying agent-based class projects. Almost all of them cited **deploying agents** as their #1 problem. The specific pain points:

1. **Serverless timeouts.** Students used AWS Lambda and hit hard timeout limits (15–30 minutes). Agentuity internally runs an agent for 40 minutes per day to address this.
2. **No VM/EC2 access.** Academic projects often prohibit EC2 usage, leaving students with only serverless options that are ill-suited for stateful, long-running agents.
3. **Gateway issues.** Wiring agents to talk to each other is a common headache.
4. **Statefulness mismatch.** The web is built for stateless concepts, but agents are often stateful (e.g., doing synthesis takes time and state).

These mapped directly to Blalock's own experience building a qualitative research agent set on serverless infrastructure, where he had to re-architect everything after realizing the platform couldn't handle synthesis workloads.

### Infrastructure Primitives for Agents

Blalock outlined six things agents need to be successful:

1. **Run as long as they need.** No artificial timeout limits.
2. **Pause, stop, and resume.** Stateful execution with checkpoint capability.
3. **Decoupled I/O.** Different inputs and outputs, including multiple modalities.
4. **Introspection, self-observability, and self-reflection.** Agents need to understand their own traces and spans — not just humans viewing them.
5. **Memory.** Persistent state for improvement and evolution.
6. **Code execution.** Ability to run code as part of agent workflows.

### Agentuity Platform Demo

Blalock demonstrated Agentuity's CLI-based workflow:

- `agentuity create` — scaffold a project with runtime selection (Bun, Python+UV, Node.js) and template (Vercel AI SDK, CrewAI, etc.)
- `agentuity dev` — run agents locally with assigned ports and a built-in simulator
- Framework-agnostic: agents built with CrewAI, LangChain, Pydantic, or Vercel AI SDK can coexist in one project and communicate via internal networking
- GitHub integration: auto-deploy on main branch merge
- AI Gateway: built-in abstraction over model keys, with cost tracking and prompt/response inspection
- Observability: production-mirror dashboard showing traces, spans, agent-to-agent call chains

### Key Insight

> Agents are a first-class citizen in infrastructure. The platform handles all routing to each agent, and agents can protect themselves via project-level or per-agent API keys.

## Related Pages

- [[entities/rick-blalock|Rick Blalock]] — Speaker, founder of Agentuity
- [[entities/agentuity|Agentuity]] — The platform demonstrated
- [[concepts/agent-deployment-challenges|Agent Deployment Challenges]] — The problems identified
- [[concepts/agent-infrastructure|Agent Infrastructure]] — The primitives outlined
- [[concepts/ai-agent-gateway|AI Agent Gateway]] — Built-in gateway capability
