---
title: "Agenticity Spectrum"
category: concepts
tags: [agent, autonomy, spectrum, agenticity, agent-definition, memory, reliability]
summary: "A spectrum-based view of agent autonomy levels, from minimal LLM loops to fully autonomous multi-agent systems, with memory as the defining characteristic."
sources:
  - "[[sources/watchv=w2hvdb4jbjs]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-memory-knowledge]]"
    type: related_to
  - target: "[[concepts/agent-vs-workflow]]"
    type: related_to
  - target: "[[concepts/agency-effectiveness-axis]]"
    type: related_to
---

# Agenticity Spectrum

The **agenticity spectrum** is a framework for understanding agent autonomy as a continuous range rather than a binary agent/non-agent distinction. Proposed by [[entities/richmond-alake|Richmond Alake]] ([[entities/mongodb|MongoDB]]) at AIEF2025.

## Core Idea

The agenticity spectrum rejects the question "what is an agent?" in favor of "how agentic is this system?" — analogous to how autonomous driving has levels (Level 0–5) rather than a binary "self-driving or not" classification. ^[extracted]

## Spectrum Levels

| Level | Description | Memory Requirement |
|---|---|---|
| **Minimal agent** | An LLM running a loop | Short-term context |
| **Mid-level agent** | Agent with tool access, prompted interactions | Short-term + some long-term |
| **Level 4 autonomous** | Multiple agents with tool access, operating with little or no prompting | Full memory system | ^[extracted]

## Defining Characteristics

Richmond defines an AI agent as a computation entity with three capabilities:

1. **Perception** — awareness of its environment
2. **Cognition** — reasoning through an LLM
3. **Action** — tool use

But the **most important** characteristic across all levels is **memory** — some form of short-term or long-term memory. Without memory, a system cannot be reflective, interactive, proactive, reactive, or autonomous. ^[extracted]

## Why a Spectrum?

Binary definitions lead to unproductive debates about whether a system "is really an agent." The spectrum approach:

- Acknowledges that different systems have different levels of autonomy
- Focuses on what the system actually does rather than what it's called
- Makes memory the central design concern, since it's the defining characteristic at every level
- Aligns with the [[concepts/agency-effectiveness-axis|agency-effectiveness axis]] — agency alone is not the goal, high agency + high effectiveness is ^[inferred]

## Relationship to Agent Memory

The agenticity spectrum directly informs memory architecture decisions:

- **Minimal agents** need only short-term context (conversation history)
- **Mid-level agents** need working memory + episodic memory for task continuity
- **Autonomous agents** need full memory management: generation, storage, retrieval, integration, updates, and deletion ^[inferred]

## Related Pages

- [[concepts/agent-memory-knowledge]] — Agent memory systems
- [[concepts/agent-vs-workflow]] — The agent vs. workflow debate
- [[concepts/agency-effectiveness-axis]] — Agency + effectiveness as two dimensions
- [[concepts/memory-management]] — The six components of memory management
- [[references/aief2025-architecting-agent-memory-richmond-alake-mongodb]] — Full talk

## Sources

- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
