---
title: Ambient Agents
category: concepts
tags:
- agents
- ambient-computing
- long-running-agents
- background-agents
- enterprise-ai
sources:
- AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg
summary: Agents that run continuously in the background for extended periods (hours), doing substantial work without requiring active user interaction. Part of a broader shift from quick-response to long-ru...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/deep-research-agents]]'
  type: related_to
- target: '[[concepts/assistive-vs-automation-agents]]'
  type: related_to
- target: '[[concepts/enterprise-agent-adoption-equation]]'
  type: increases
- target: '[[concepts/agent-autonomy]]'
  type: related_to
---

# Ambient Agents

**Ambient agents** are AI agents that run continuously in the background for extended periods — hours at a time — doing substantial work without requiring active user interaction. They represent a shift from interactive, request-response patterns to background, always-on computation.

## The Shift in Interaction Patterns

[[entities/harrison-chase|Harrison Chase]] identifies ambient agents as part of a broader trend in enterprise AI. The progression he describes:

1. **Inline autocomplete** (Cursor's original model) — quick, single-turn interactions
2. **Chat Q&A** — slightly longer, multi-turn conversations
3. **Ambient agents** — background agents running for hours, doing substantial work

This represents a fundamental change in what "agent work" means: not a copilot sitting beside you, but something working autonomously in the background. ^[extracted]

## Examples

- **Coding agents** that work on codebases for hours, making changes across multiple files
- **Research agents** that continuously monitor and synthesize information
- **Process automation agents** that coordinate multi-step workflows end-to-end

## Enterprise Implications

Ambient agents map to the "value when right" term in the [[concepts/enterprise-agent-adoption-equation|enterprise agent adoption equation]]: by doing more work, they produce higher-value outputs. But they also raise the "cost when wrong" concern — if an ambient agent runs for hours and makes a wrong decision, the cost of recovery may be significant. ^[inferred]

This makes the [[concepts/workflow-agent-spectrum|workflow-agent spectrum]] especially relevant: ambient agents need more deterministic scaffolding to be safe in enterprise contexts.

## Related

- [[concepts/deep-research-agents]] — Extended research as another long-running pattern
- [[concepts/assistive-vs-automation-agents]] — Ambient agents tend toward automation
- [[concepts/enterprise-agent-adoption-equation]] — Value and risk tradeoffs
- [[concepts/agent-autonomy]] — Degree of autonomous execution
