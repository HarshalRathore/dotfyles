---
title: Context Switching Costs
tags:
- productivity
- context-switching
- software-engineering
- aief2025
aliases:
- context switching costs
- recovery time
- interruption cost
sources:
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - concepts/parallel-ai-workstreams|Parallel AI Workstreams
  type: mitigated_by
- target:
  - - concepts/agent-orchestration-role|Agent Orchestration Role
  type: motivates
category: concepts
summary: Context Switching Costs
---

# Context Switching Costs

**Context switching costs** refer to the productivity loss incurred when engineers are interrupted and must recover their mental context after each disruption. ^[extracted]

## The Numbers

[[entities/eric-hou|Eric Hou]] of [[entities/augment-code|Augment Code]] cited three statistics that quantify the scale of the context switching problem: ^[extracted]

1. **23 minutes** — Each interruption costs 23 minutes of recovery time
2. **Two-thirds** — The industry spends 2/3 of engineering time maintaining code instead of building new features
3. **$300 billion** — Annually spent on context switching and firefighting across the industry

## The "Bad Tuesday" Pattern

Eric described a pattern familiar to every engineer: ^[extracted]

1. Start the day focused on a single task (design system component)
2. Get interrupted by an emergency (staging outage)
3. Get interrupted again by mentoring requests (new hire questions)
4. Go home feeling like nothing was accomplished despite 12 hours of work
5. Wake up to another week of on-call remediation work

This pattern is not bad luck — it's the structural result of normalized context switching costs. ^[extracted]

## Why AI Changes the Equation

Traditional approaches to context switching (time blocking, notifications off, deep work) still require the human to be the bottleneck. ^[inferred] With AI agents handling parallel workstreams, the human can: ^[extracted]

- Stay focused on the critical path while agents parse through noise
- Delegate investigation and remediation to agents
- Use bots for stakeholder communication
- Evaluate results without doing the underlying work

This doesn't eliminate interruptions — it eliminates the need for the human to personally handle every interruption. ^[inferred]

## Related

- [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]] — How AI mitigates context switching
- [[concepts/agent-orchestration-role|Agent Orchestration Role]] — The new human role
- [[concepts/flow-awareness|Flow Awareness]] — Technical mechanism for preserving flow
