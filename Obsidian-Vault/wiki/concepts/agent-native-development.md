---
title: "Agent-Native Development"
category: concepts
tags: [agent-native, development, platform, orchestration, ai-development]
summary: "A development paradigm where organizations build on platforms purpose-designed for agent delegation, with centralized context, reliable agents, and parallel infrastructure — not human tools with AI sprinkled on top."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: enables
  - target: "[[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]]"
    type: requires
  - target: "[[concepts/context-over-models|Context Over Models]]"
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

## Documentation as First-Class Citizen

In agent-native development, documentation and process are not overhead — they are the **knowledge base and map** for agents to learn and imitate the team's thinking. PRDs, design docs, RCAs, and meeting transcriptions become a conversation with both future developers and future AI systems.^[extracted]

## Related Pages

- [[concepts/agent-driven-development|Agent-Driven Development]] — The broader paradigm shift
- [[concepts/context-over-models|Context Over Models]] — Why context is the critical input
- [[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]] — Documentation as agent input
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The human role in agent-native development
- [[entities/factory|Factory]] — Platform example
