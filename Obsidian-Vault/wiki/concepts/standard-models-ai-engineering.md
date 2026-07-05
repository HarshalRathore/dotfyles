---
title: "Standard Models in AI Engineering"
tags:
  - standard-model
  - ai-engineering
  - architecture
  - pattern
  - mental-model
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Standard Models in AI Engineering

The thesis that AI engineering needs established **standard models** — reusable architectural patterns and mental models that guide application design — analogous to how physics has a standard model and software engineering has patterns like ETL, MVC, CRUD, and MapReduce.

Proposed by [[entities/swyx|swyx]] in his AIEF2025 opening keynote, this framework asks: "What is the standard model in AI engineering?" and proposes several candidates.

## The Analogy

swyx compared the current state of AI engineering to the 1927 Solvay Conference in physics, where Einstein, Marie Curie, and other foundational figures gathered to establish ideas that would last decades. In physics, the period from the 1940s to 1970s established the standard model, and the next 50 years haven't fundamentally changed it.

In software engineering, established patterns like ETL, MVC, CRUD, and MapReduce serve as standard models that guide how engineers think about and build applications.

## Candidate Standard Models

swyx proposed several candidates for AI engineering's standard model:

### 1. LMOS

Karpavi's 2023 model for language model operating systems, updated for 2025 to include multimodality and [[concepts/model-context-protocol|MCP]] as the default protocol for connecting with the outside world.

### 2. LNSDLC (AI-Adapted SDLC)

A Software Development Lifecycle adapted for AI, where:
- Early stages (LLMs, monitoring, RAG) are becoming **commodity/free-tier**
- Real engineering value lies in **evals, security orchestration, and production-grade work**
- The shift is from demos to production

### 3. Effective Agent Patterns

The received wisdom for building agents, including:
- Anthropic's "Building Effective Agents" framework
- OpenAI's agent SDK with swarm concepts
- Descriptive top-down models of agent capabilities (intent, control flow, memory, planning, tool use)

### 4. SPADE

swyx's own framework for AI-intensive applications: **Sync, Plan, Analyze, Deliver, Evaluate**. See [[concepts/spade-pattern]] for details.

## The Core Question

The thesis pushes the AI engineering community to identify what standard models can "everyone use to improve their applications." The goal is building products people want to use, not just arguing about terminology.

## Relationship to Agent vs. Workflow Debate

swyx argued that the agent vs. workflow debate is less productive than tracking the ratio of human input to AI output. Standard models should be judged by their usefulness in improving applications, not by their alignment with a particular terminology camp.

## Related

- [[concepts/spade-pattern]] — SPADE as a candidate standard model
- [[concepts/agent-vs-workflow]] — The debate swyx argues is less useful than standard models
- [[concepts/ambient-agents]] — Ambient agents as a 0-to-1 ratio concept
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote introducing the thesis
