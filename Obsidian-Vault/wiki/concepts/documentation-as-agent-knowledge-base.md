---
title: "Documentation as Agent Knowledge Base"
category: concepts
tags: [documentation, knowledge-base, agent-native, process, ai-agents]
summary: "In agent-native development, documentation and process become the knowledge base and map for agents to learn and imitate team thinking — transforming what is normally overhead into an asset."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-native-development|Agent-Native Development]]"
    type: component-of
  - target: "[[concepts/context-over-models|Context Over Models]]"
    type: enables
  - target: "[[concepts/agent-readable-docs|Agent-Readable Docs]]"
    type: extends
---

# Documentation as Agent Knowledge Base

In agent-native development, **documentation and process become a knowledge base and a map for agents to learn and imitate the way the team thinks**. What is normally seen as overhead transforms into an asset.

## The Shift

[[entities/eno-reyes|Eno Reyes]] of [[entities/factory|Factory]] argues that when a company is doing agent-native software development, the role of documentation fundamentally changes:

> "Your process and your documentation is a knowledge base and a map for your droids to learn and imitate the way that your team thinks."^[extracted]

Documentation becomes **a conversation with both future developers and future AI systems** — not just future humans.

## What Counts as Documentation

In this paradigm, the following artifacts serve as agent knowledge:

- **PRDs** (Product Requirements Documents)
- **Engineering design docs**
- **RCA templates** (Root Cause Analysis)
- **Quarterly engineering and product roadmaps**
- **Transcriptions of every interaction and meeting**

Factory transcribes every single interaction and meeting, combining these notes with agent access to architecture to enable planning and decision-making.^[extracted]

## The Planning Workflow

Factory's planning process demonstrates this principle in action:

1. Feed three months of transcribed user transcripts and meeting notes to a knowledge agent
2. Give the agent access to architecture documentation
3. Ask it to find patterns in customer feedback that map to assumptions
4. Ask it to highlight technical constraints from the current system
5. Use the intermediate documents to iterate on a final PRD
6. Convert the PRD into a roadmap with parallelized tickets

This workflow replaces ad-hoc planning with a structured, agent-mediated process where documentation is the primary input.^[inferred]

## Implications

- **Documentation quality matters more:** If agents are learning from documentation, poor documentation propagates poor patterns
- **Process becomes executable:** Well-documented processes can be directly consumed by agents, not just humans
- **Knowledge retention improves:** Transcription and documentation capture institutional knowledge that would otherwise be lost
- **Onboarding accelerates:** New agents (and humans) can learn the team's thinking patterns from the knowledge base

## Related Pages

- [[concepts/agent-native-development|Agent-Native Development]] — The paradigm requiring this approach
- [[concepts/context-over-models|Context Over Models]] — Documentation as context source
- [[concepts/agent-readable-docs|Agent-Readable Docs]] — Agent-optimized documentation patterns
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — Documentation as orchestration input
