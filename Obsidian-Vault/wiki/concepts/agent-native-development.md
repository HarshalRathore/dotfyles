---
title: Agent-Native Development
category: concepts
tags:
- agent-native
- development
- platform
- orchestration
- ai-development
summary: A development paradigm built for agent delegation, centralized context, reliable agents, parallel infrastructure, and artifact-oriented workflows.
sources:
  - AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk
  - https://x.com/i/status/2083430232405733819
provenance:
  extracted: 0.76
  inferred: 0.22
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-08-02T01:17:21Z
relationships:
- target: '[[concepts/agent-driven-development|Agent-Driven Development]]'
  type: enables
- target: '[[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]]'
  type: requires
- target: '[[concepts/context-over-models|Context Over Models]]'
  type: requires
---

# Agent-Native Development

**Agent-native development** is a paradigm where organizations build on platforms purpose-designed for delegating the majority of software lifecycle tasks to agents. It is distinct from incrementally adding AI to human-oriented tools.

## Definition

Agent-native development requires four foundational elements:

1. **Intuitive delegation interface** — A platform for managing and delegating tasks to agents, not just chat-based interaction
2. **Centralized context** — Integration across all engineering tools and data sources to capture knowledge in the "cracks between systems"
3. **Reliable agents** — Agents that consistently produce high-quality, production-grade outputs
4. **Parallel infrastructure** — Supporting thousands of agents working simultaneously

## Contrast with Incremental AI

The incremental approach — taking tools designed 20 years ago for humans writing every line of code and "sprinkling AI on top" — lacks clarity about the future interaction pattern. Agent-native development requires building from the ground up for agent delegation, not porting human workflows with an AI layer.^[inferred]

## The Platform Model

Factory's "droids" exemplify agent-native development: they don't just write code. They:

- Ground themselves in the development environment (codebase, git, tools, memories)
- Produce plans and ask clarifying questions before executing
- Execute end-to-end (code → lint → PR → CI)
- Research and integrate new technology
- Analyze feedback patterns for planning
- Convert PRDs into parallelized ticket roadmaps


## Google Antigravity as an Agent-Native Surface

The Google Antigravity announcement makes the platform model concrete: a CLI, SDK, native voice, integrations, asynchronous tasks, sub-agents, and a desktop surface organized around conversations and artifacts. It is designed for delegation and inspection rather than only line-by-line editing. ^[extracted] ^[inferred]

The reported operating-system experiment also matches the paradigm's parallel-infrastructure requirement: 93 agents worked concurrently for more than 12 hours and produced a tested artifact. The figures are self-reported product-demo claims. ^[inferred] See [[entities/google-antigravity|Google Antigravity]].
## Documentation as First-Class Citizen

In agent-native development, documentation and process are not overhead — they are the **knowledge base and map** for agents to learn and imitate the team's thinking. PRDs, design docs, RCAs, and meeting transcriptions become a conversation with both future developers and future AI systems.^[extracted]

## Related Pages

- [[concepts/agent-driven-development|Agent-Driven Development]] — The broader paradigm shift
- [[concepts/context-over-models|Context Over Models]] — Why context is the critical input
- [[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]] — Documentation as agent input
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The human role in agent-native development
- [[entities/factory|Factory]] — Platform example
