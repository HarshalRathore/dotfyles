---
title: Project Paradox
category: concepts
tags: [multi-agent, agent-memory, emotion-vectors, trust-matrix, importance-scoring, auto-research, RAG]
aliases: [Project Paradox, paradox memory system, Irina multi-agent system]
relationships:
  - target: '[[concepts/memory-harness]]'
    type: implements
  - target: '[[concepts/auto-research-loop]]'
    type: integrates
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A multi-agentic system with per-agent RAG memory, emotion vectors, trust matrices, and importance-scoring — designed for long-running social behavior and autonomous improvement via auto-research.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Project Paradox

**Project Paradox** is a multi-agentic system presented at the AI Engineer World's Fair 2026 by Irina (ex-Microsoft/Supercell). It implements a memory harness with per-agent RAG, emotion tracking, trust matrices, and importance-scoring — designed to maintain coherent long-running social behavior across many agents. ^[extracted]

## Core Architecture

The architecture was intentionally stateful, built around four mechanisms: ^[extracted]

### 1. Per-Agent Memory

Each agent has its own **memory namespace backed by RAG**, ensuring memory does not bleed between agents. This prevents cross-contamination while allowing each agent to build a coherent history of interactions. ^[extracted]

### 2. Emotion Vectors

After each event or conversation, the system updates a small **emotion vector** tracking five dimensions: ^[extracted]

- Joy
- Sadness
- Fear
- Anger
- Disgust

These emotions affect how the agent perceives and responds to future events. ^[inferred]

### 3. Trust Matrix

Agents maintain a **trust matrix** tracking their relationships with other agents. This influences how information is shared and how seriously one agent's statements are taken by another. ^[extracted]

### 4. Importance-Scoring

Memory items are **importance-scored** so the agent can prioritize what to remember and what to forget. This prevents memory saturation with trivial events. ^[extracted]

## Long-Running Social Challenges

Over extended simulations, several failure modes emerged: ^[extracted]

- **Source decay** — the system remembers the rough topic but loses the source
- **Rumor solidification** — speculation becomes stated as fact (a rumor becomes certainty)
- **Action-memory disconnect** — an agent knows a fact but fails to recall it during planning

These problems highlighted the need for better memory management in multi-agent systems. ^[inferred]

## Auto-Research Integration

Project Paradox integrated with the **auto-research** paradigm (inspired by Karpathy's work) to improve the system autonomously: ^[extracted]

- Instead of manually tuning prompts, the system runs experiments on itself
- The auto-research loop identifies when trust scores drift or when memory policies degrade
- The system can propose and test new interaction policies without human intervention

## Related

- [[concepts/memory-harness|Memory Harness]] — the write-manage-read loop Project Paradox implements
- [[concepts/auto-research-loop|Auto-Research Loop]] — self-experimentation methodology integrated into Paradox
- [[concepts/decisions-ledger|Decisions Ledger]] — the ranked recall strategy that performs best in memory tasks
- [[concepts/agent-identity-log|Agent Identity Log]] — how agent identity is maintained across episodes

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
