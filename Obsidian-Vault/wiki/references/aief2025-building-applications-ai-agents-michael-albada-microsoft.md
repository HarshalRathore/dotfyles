---
title: "Building Applications with AI Agents — Michael Albada, Microsoft"
tags:
  - aief2025
  - ai-agents
  - tool-use
  - orchestration
  - production
  - microsoft
  - cybersecurity
category: references
sources:
  - "https://www.youtube.com/watch?v=r30col3upug"
summary: "Michael Albada (Microsoft Principal Applied Scientist) covers agentic development fundamentals: agency vs effectiveness, tool-use design, orchestration patterns, and production pitfalls."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/michael-albada]]"
    type: related_to
  - target: "[[entities/microsoft]]"
    type: related_to
---

# Building Applications with AI Agents — Michael Albada, Microsoft

**Speaker:** Michael Albada, Principal Applied Scientist, Microsoft (cybersecurity division)
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=R30col3UPUg
**Source material:** Distillation of a 300-page O'Reilly book (first 7 chapters available as early release; print edition forthcoming).

## TL;DR

Albada presents a practical framework for building production AI agent systems, emphasizing that agency is a means to effectiveness, not an end. He covers tool-use design principles (avoid mapping APIs 1:1 to tools), orchestration patterns (chains → trees → agentic), and the importance of keeping deterministic business logic outside the model.

## Key Themes

### Agency vs. Effectiveness

The talk introduces a two-dimensional framework for evaluating AI systems: the **agency axis** (degree of autonomous reasoning and action) and the **effectiveness axis** (how well the system solves the actual problem). The core thesis: adding agency should never compromise effectiveness. The ideal is high agency + high effectiveness. Low effectiveness systems — whether low or high agency — deliver no value. ^[extracted]

### Industry Signals

Y Combinator accepted companies describing themselves as "agentic" increased by 254% over the past three years, showing massive investment and excitement. However, leading academic agentic benchmarks remain challenging: tasks requiring multiple tool calls and complex environments score in the 50-70% range, up from single digits five to ten years ago. ^[extracted]

### Definition of an Agent

Albada defines an agent as "an entity that can reason, act, communicate, and adapt to solve tasks." The foundation model provides the base, and additional components are layered on to increase performance. He agrees with [[entities/andrew-ng|Andrew Ng]]'s framing that agency is a spectrum, not a binary distinction, and adds the effectiveness dimension as a second axis. ^[extracted]

### Tool Use Design

Foundation models are autoregressive generative models that can output function calls, not just natural language. When tools are exposed through an entity/interface, the agent can invoke functions and access API functionality. Key design principles: ^[extracted]

1. **Do NOT map APIs 1:1 to tools.** Exposing 300 APIs as 300 tools confuses the model. More tools per prompt = lower accuracy due to semantic collision between tools.
2. **Group tools logically.** Reduce the number exposed at a single time.
3. **Keep scope specific.** Tool names and descriptions should be clear. Each tool should feel like a single human-facing action.
4. **Operate in a loop.** Parse model output → invoke tool → get observation → feed back to model → repeat until final output.

### Orchestration Patterns

Three levels of orchestration, ordered by complexity: ^[extracted]

1. **Chains** — single linear flow. Easiest to measure, lowest cost, highest reliability. Default choice when applicable.
2. **Trees** — branching logic where the LLM chooses which path through the tree. Useful for multi-hop reasoning (e.g., cybersecurity incident severity classification and enrichment).
3. **Agentic** — the model chooses which actions to invoke and repeats them. Harder to measure and get full performance from.

The **bitter lesson** applies here too: when chains and trees become too complex and convoluted to maintain, that's a signal to move to a more agentic pattern.

### Deterministic Logic vs. Model Logic

A common pattern: instead of relying on the LLM to apply business logic, expose tools to update state variables (A=true, B=true, C=true), validate each state change deterministically, and only execute the action when all conditions are met. This keeps logic in maintainable, deterministic code and state external to the model. ^[extracted]

## Limitations

- The talk transcript is incomplete (cuts off mid-sentence at the end).
- Code examples referenced in the O'Reilly book are not available in this talk.
- No specific benchmark numbers or case studies from Microsoft's Security Co-Pilot are shared.

## Related

- [[concepts/agent-vs-workflow]] — Agency as a spectrum, not a binary
- [[concepts/agent-loop]] — The tool-use loop pattern
- [[concepts/orchestrator-patterns]] — Chains, trees, and agentic orchestration
- [[concepts/semantic-collision-tools]] — Tool collision when too many tools are exposed
- [[concepts/agency-effectiveness-axis]] — The two-dimensional framework
- [[entities/andrew-ng|Andrew Ng]] — Agency spectrum framing
