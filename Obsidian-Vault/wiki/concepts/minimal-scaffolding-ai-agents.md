---
title: "Minimal Scaffolding for AI Agents"
tags:
  - ai-agents
  - simplicity
  - design-philosophy
  - scaffolding
  - agent-frameworks
  - model-capability
aliases: [scaffolding, minimal scaffolding, agent scaffolding]
sources:
  - "[[sources/watchv=q3nreeadkmc]]"
summary: "Design philosophy that AI agents should require minimal scaffolding — just a model and tools — trusting increasingly capable LLMs to handle reasoning, planning, and orchestration autonomously."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: related_to
  - target: "[[concepts/simple-is-better-ai|Simple is Better AI]]"
    type: extends
---

# Minimal Scaffolding for AI Agents

The minimal scaffolding philosophy holds that AI agents should require the fewest possible inputs — ideally just a **model** and **tools** — and that increasingly capable LLMs should handle reasoning, planning, and orchestration without extensive human-written scaffolding. ^[extracted]

## Core Principle

[[entities/suman-debnath|Suman Debnath]] (AWS) articulated this at AIEF2025 with [[entities/strands-agents|Strands Agents]]: the SDK's only motivation is to make agents as simple as possible. The two strands in the logo represent the two primitives — model and tool. Everything else (system prompts, orchestration frameworks, state machines, background instructions) is scaffolding that can be removed as models improve. ^[extracted]

The speaker explicitly encouraged removing the system prompt entirely from demos to test whether the model can reason about the task on its own. ^[extracted]

## What Scaffolding Usually Means

Traditional agent frameworks typically include:
- Extensive system prompts with detailed behavioral instructions
- State machines or orchestrators that dictate agent flow
- Background context injection
- Explicit planning and reasoning chains
- Multi-step coordination logic

Minimal scaffolding replaces all of this with:
- A model ID (or default)
- A tools list
- A natural language prompt

## Trade-offs

**Benefits:**
- Simpler code, fewer abstractions to maintain
- Agents adapt more naturally as models improve
- Less developer time spent on prompt engineering
- Closer to how capable models actually work (they plan internally)

**Risks:**
- Less control over agent behavior
- May fail on complex tasks requiring structured reasoning
- Harder to debug when things go wrong
- Performance varies significantly across model capabilities

## Relationship to Other Patterns

Minimal scaffolding sits on a spectrum between:
- **Vibe coding** ([[concepts/vibe-coding|Vibe Coding]]) — even less structure, just a prompt
- **Structured agent frameworks** (LangChain, [[concepts/langgraph|LangGraph]]) — more scaffolding, more control

The [[concepts/simple-is-better-ai|Simple is Better AI]] principle aligns with minimal scaffolding: simpler systems are more maintainable and often more reliable when models are capable enough. ^[inferred]

## Evidence

The Strands demos demonstrated that models can:
- Read a file, summarize it, write it, and speak it — all without scaffolding
- Generate Manim mathematical visualizations from a natural language prompt — without system prompt guidance
- Reason through multi-step tasks when given the right tools ^[extracted]

## Related

- [[concepts/agent-loop]] — The agent loop pattern that minimal scaffolding simplifies
- [[concepts/vibe-coding]] — Vibe coding as an even more minimal approach
- [[concepts/simple-is-better-ai]] — Simple is better AI principle
- [[concepts/reliability-over-intelligence]] — The reliability trade-off of minimal scaffolding
- [[entities/strands-agents]] — Strands Agents SDK implementation
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — AIEF2025 talk
