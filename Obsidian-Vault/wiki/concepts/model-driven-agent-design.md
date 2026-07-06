---
title: Model-Driven Agent Design
tags:
- ai-agents
- agent-architecture
- llm-driven
- aws
- strands-agents
sources:
- AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo
summary: An agent design approach where developers define what the agent should do (prompt + tools) and let state-of-the-art LLMs handle reasoning, planning, and action — minimizing scaffolding and orchestr...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/strands-agents|Strands Agents]]'
  type: implements
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: extends
- target: '[[concepts/ai-native-toolchain|AI-Native Toolchain]]'
  type: related_to
category: concepts
---
# Model-Driven Agent Design

A paradigm for building AI agents where developers define **what** the agent should do (through prompts and tools), and let state-of-the-art LLMs handle the **how** — reasoning, planning, decision-making, and action execution. ^[extracted]

## Core Principle

Traditional agent frameworks require developers to write extensive orchestration code: state machines, hand-crafted decision trees, and rigid flow control. Model-driven design inverts this: the LLM itself becomes the orchestrator. ^[extracted]

## Key Tenets

1. **Define intent, not implementation**: Write a prompt that describes what the agent should accomplish, and provide tools it can use.
2. **Trust the model**: Rely on increasingly capable LLMs to reason about which tools to call, in what order, and with what parameters.
3. **Minimize scaffolding**: No state machines, no custom orchestration frameworks, no rigid flow control.
4. **Iterate on tools and prompts**: The developer's job is refining the tool set and prompt, not the control flow.

## Implementation: Strands Agents

AWS's Strands Agents SDK is the reference implementation of model-driven design:

```
Install → Import → Define prompt + tools → Test locally → Deploy to cloud
```

No orchestration framework. No state machine. No scaffolding. ^[extracted]

## Benefits

- **Speed**: Amazon Q Developer CLI was built in three weeks using this approach.
- **Flexibility**: The LLM adapts to novel situations without code changes.
- **Simplicity**: Developers write fewer lines of code, focusing on domain logic.
- **Scalability**: Works from startups to enterprise-scale deployments (600M+ devices).

## Trade-offs

- **Reliability**: Depends on model capability; less predictable than hand-coded logic.
- **Cost**: More LLM calls than optimized hand-crafted flows.
- **Debuggability**: Harder to trace why a model made a specific decision.

## Related Pages

- [[entities/strands-agents]] — Reference implementation
- [[concepts/agent-loop|Agent Loop]] — The underlying agent execution pattern
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — Broader toolchain context
- [[concepts/agentic-services|Agentic Services]] — How this enables the shift from web services
