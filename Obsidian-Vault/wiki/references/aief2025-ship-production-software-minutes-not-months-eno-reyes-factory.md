---
title: "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory"
category: references
tags: [aief2025, factory, agent-native, agent-driven, droids, context, planning, documentation, orchestration]
summary: "Eno Reyes (Factory) presents agent-native development: delegating most software lifecycle tasks to agents, the critical role of context, and the transition from executing to orchestrating."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
provenance: { extracted: 0.95, inferred: 0.05, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[entities/eno-reyes|Eno Reyes]]"
    type: presented-by
  - target: "[[entities/factory|Factory]]"
    type: presented-by-company
  - target: "[[misc/ai-engineer-worlds-fair-2025|AI Engineer World's Fair 2025]]"
    type: presented-at
---

# Ship Production Software in Minutes, Not Months

**Speaker:** Eno Reyes, Factory
**Video:** https://www.youtube.com/watch?v=iheWKg2Tkrk

## TL;DR

Eno Reyes argues that organizations are transitioning from human-driven to agent-driven software development, but true AI power requires more than sprinkling AI on 20-year-old human-oriented tools. It requires a platform with intuitive delegation interfaces, centralized context, reliable agents, and parallel infrastructure. The key unlock is **context** — AI tools fail not because models are weak but because they lack crucial context from meetings, whiteboards, and ad-hoc discussions. Documentation and process become knowledge bases for agents.

## Problem / Motivation

Reyes identifies a fundamental mismatch in how organizations approach AI in software development:

- The current zeitgeist is to take tools designed 20 years ago for humans writing every line of code, then sprinkle AI on top and add layers of AI
- This incremental approach lacks clarity about what the future interaction pattern actually looks like
- There are "fundamentally hard problems" blocking organizations from accessing AI's true power

He contrasts this with the "vibe coding" narrative popularized on Twitter — the idea that you can "vibe code" anything. Reyes argues vibe coding won't solve hard problems like "a legacy Java 7 app that runs 5% of the world's global bank transactions." Production software needs real software engineering, not just natural language prompts.

## Method / Architecture

Factory's approach centers on four pillars:

1. **Intuitive interface for managing and delegating tasks** — Not just chat, but a platform for task orchestration
2. **Centralized context** — Integrating across all engineering tools and data sources to capture the "cracks between systems"
3. **Reliable agents** — Agents that consistently produce high-quality outputs, not just when things go well
4. **Parallel infrastructure** — Supporting thousands of agents working simultaneously

Factory's agents, called **"droids,"** operate across the full software lifecycle:

- **Code execution:** Ingest task → ground in environment (search codebase, check git state, review recent changes, access memories) → produce plan → ask clarifying questions → execute → write code → run hooks/lint → generate PR passing CI
- **Planning:** Research new model releases, understand codebase and product goals from "organ memory," access technical architecture from design docs, analyze customer feedback patterns, highlight technical constraints
- **Documentation pipeline:** Transcribe every interaction and meeting, combine with architecture access, feed to knowledge droids for pattern analysis

## Key Insights

### Context Over Model Capability

> "AI tools are only as good as the context that they receive."

Reyes investigated thousands of droid-assisted development sessions and found that AI fails not because LLMs aren't good enough, but because they're **missing crucial context**. LLMs don't know about morning stand-ups, ad-hoc meetings, or whiteboard sessions — but you can give them that context through transcription and integration.

The real solution isn't just making AI smarter; it's getting better at providing systems with missing context.^[inferred]

### Agents as Coworkers, Not Tools

Reyes recommends thinking about AI tools as "something in between a coworker and a platform" rather than as tools. This mental model shift changes how you design for agent interaction — you're building a collaborative environment, not a command interface.^[inferred]

### Planning with AI is Fundamentally Different

Planning with AI isn't about asking "please build this thing" or "give me the design doc." It's about **delegating the groundwork and research to AI agents, then using a collaborative platform to interact and explore possibilities together**.

Factory's planning process demonstrates this: they feed three months of transcribed user transcripts, architecture access, and ad-hoc meeting notes to a knowledge droid, asking it to find patterns in customer feedback that map to assumptions and highlight technical constraints. The intermediate documents become the basis for iterating on a final PRD.

### Documentation as Agent Knowledge Base

When a company is doing agent-native software development, **process and documentation become a knowledge base and a map for droids to learn and imitate the way the team thinks**. PRDs, engineering design docs, RCA templates, quarterly roadmaps, and meeting transcriptions — what is normally seen as a burden — becomes a conversation with both future developers and future AI systems.

### From Executing to Orchestrating

The evolution of software development is moving from executing tasks to **orchestrating systems that work on behalf of teams**. A PRD can be turned into a roadmap, tickets can be created with dependencies, and work can be parallelized among multiple code droids.

## Results

Factory has spent two years partnering with large enterprises to build toward agent-native development. The talk demonstrates a working system where droids can:

- Ground themselves in a codebase and environment
- Produce plans with clarifying questions
- Execute tasks end-to-end (code → lint → PR → CI pass)
- Research and integrate new technology
- Analyze feedback patterns for planning
- Convert PRDs into parallelized ticket roadmaps

## Limitations

- The talk is a vision/positioning piece; specific quantitative results (deployment scale, success rates, ROI metrics) are not provided
- The demo video is presented as "nice when it works" — Reyes acknowledges the harder question is "what about when it fails?" but does not deeply address failure modes
- The "knowledge droid" planning workflow is described at a high level without technical specifics on how transcription, architecture access, and feedback analysis are integrated

## Related

- [[concepts/agent-native-development|Agent-Native Development]] — The paradigm described
- [[concepts/agent-driven-development|Agent-Driven Development]] — The broader transition
- [[concepts/context-over-models|Context Over Models]] — Key insight
- [[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]] — Factory's approach
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The evolution thesis
- [[concepts/vibe-coding|Vibe Coding]] — Reyes contrasts his approach with the vibe coding narrative
- [[entities/factory|Factory]] — The company building the platform
- [[entities/eno-reyes|Eno Reyes]] — Speaker and founder
