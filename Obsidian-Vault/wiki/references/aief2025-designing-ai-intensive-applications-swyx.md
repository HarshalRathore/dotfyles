---
title: "AIEF2025 - Designing AI-Intensive Applications — swyx"
tags:
  - aief2025
  - ai-intensive
  - agent-patterns
  - standard-models
  - architecture
  - workflow
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - Designing AI-Intensive Applications — swyx

**Speaker:** [[entities/swyx|swyx]] (AI News creator, conference organizer)
**Event:** AI Engineer World's Fair 2025, New York
**Video:** https://www.youtube.com/watch?v=IHkyFhU6JEY

## Summary

swyx's opening keynote at AIEF2025 traces the evolution of AI engineering from low-status GPT wrappers to a mature field, proposes several candidate "standard models" for the domain, and introduces the SPADE framework as a practical mental model for designing AI-intensive applications that make thousands of AI calls to serve a particular purpose.

## Key Themes

### Conference Evolution

swyx framed the conference as tracking AI engineering's evolution: 2023 covered "three types of AI engineer," 2024 covered multidisciplinary AI engineering (leading to the World's Fair's multiple tracks), and 2025 focused on agent engineering. The conference has doubled every track from the previous year and positioned itself as "more responsive than NeurIPS, more technical than TED."

### Standard Models in AI Engineering

The core thesis: just as physics has a standard model (formed 1940s-1970s) and software engineering has established patterns like ETL, MVC, CRUD, and MapReduce, AI engineering needs its own standard models. swyx proposed several candidates:

1. **LMOS** — Karpavi's 2023 model, updated for 2025 multimodality and MCP as the default protocol for connecting with the outside world
2. **LNSDLC** — a Software Development Lifecycle adapted for AI, where early stages (LLMs, monitoring, RAG) are becoming commodity/free-tier, and the real engineering value lies in evals, security orchestration, and production-grade work
3. **Effective Agent Patterns** — the received wisdom from Anthropic's "Building Effective Agents" and OpenAI's agent SDK with swarm concepts
4. **SPADE** — swyx's own framework for AI-intensive applications (see dedicated page)

### Agent vs. Workflow Debate

swyx argued that the terminology debate between "agents" and "workflows" is less useful than tracking the ratio of human input to AI output. He introduced a mental model where:
- **Co-pilot era:** debounce input (every few characters) → autocomplete
- **ChatGPT era:** every few queries → responding query
- **Reasoning models:** 1:10 ratio (one human input, up to ten AI outputs)
- **Ambient agents:** 0:1 ratio (no human input, pure AI output)

The assertion: "it's really about human input versus valuable AI output" is more useful than arguing about definitions.

### SPADE Framework

A concrete pattern for building AI-intensive applications, distilled from swyx's daily AI News pipeline:
- **S**ync — scrape data sources (Discord, Reddit, Twitter)
- **P**lan — organize what was found
- **A**nalyze — recursively summarize content
- **D**eliver — format and deliver to user
- **E**valuate — assess quality and iterate

This pattern makes thousands of AI calls to serve a particular purpose: sync, plan, parallel process, analyze (many-to-one reduction), deliver, and evaluate.

### The Solvay Conference Analogy

swyx compared the current moment to the 1927 Solvay Conference in physics, where Einstein, Marie Curie, and other household names gathered to establish foundational ideas that would last decades. The thesis: "this is the time, this is the right time" to establish AI engineering's standard model.

### Simple is Better

A recurring theme: the best results come from simplicity. Anthropic's Eric Stuntz beat SWE-bench with a "very simple scaffold." OpenAI's Greg Brockman made similar points about deep research. The field is still early with plenty of "alpha to mine."

## Related Talks Mentioned

- **Omar** — DSPy talk (recommended to attend)
- **Barry** (Anthropic) — Building Effective Agents (previous conference, extremely popular)
- **Dominic** — OpenAI's agent SDK / swarm concept (released day before)
- **Ankur** (Braintrust) — keynote on SDLC commoditization
- **Ryza Martin** — NotebookLM product management story (product management track)
- **Sumith** (PyTorch lead) — key insight that AI News is a workflow, not an agent

## Related

- [[concepts/spade-pattern]] — SPADE framework for AI-intensive applications
- [[concepts/standard-models-ai-engineering]] — standard models thesis
- [[concepts/agent-vs-workflow]] — agent vs workflow debate
- [[concepts/ambient-agents]] — 0-to-1 ambient agents concept
- [[references/aief2025-ship-it-building-production-ready-agents-mike-chambers-aws]] — Mike Chambers' AIEF2025 talk on production agents
- [[references/aief2025-useful-general-intelligence-danielle-perszyk]] — Danielle Perszyk's AIEF2025 talk
