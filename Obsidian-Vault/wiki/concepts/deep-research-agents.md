---
title: "Deep Research Agents"
category: concepts
tags:
  - agents
  - deep-research
  - long-running-agents
  - enterprise-ai
  - high-value-tasks
sources:
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
summary: "A class of agents that perform extended research tasks over long time horizons (minutes to hours), contrasting with traditional quick-response RAG/QA systems. Part of a broader shift toward long-running, high-value agent patterns."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ambient-agents]]"
    type: related_to
  - target: "[[concepts/assistive-vs-automation-agents]]"
    type: related_to
  - target: "[[concepts/enterprise-agent-adoption-equation]]"
    type: increases
  - target: "[[concepts/knowledge-work-automation]]"
    type: related_to
---

# Deep Research Agents

**Deep research agents** are a class of AI agents that perform extended research tasks over long time horizons — minutes to hours — rather than providing quick responses. They represent a shift from traditional RAG/QA systems toward agents that do substantial, multi-step work to produce higher-value outputs.

## Contrast with Traditional RAG

Traditional RAG and question-answering systems are designed for speed: respond within ~5 seconds with a quick answer. Deep research agents trade speed for depth — they run for extended periods, gathering information, analyzing sources, and synthesizing findings. ^[extracted]

## Part of a Broader Trend

[[entities/harrison-chase|Harrison Chase]] identifies deep research as part of a broader trend toward long-running agents that provide more value by doing more work:

- **Deep research** — extended research tasks over long time horizons
- **Ambient agents** — background agents that run for hours (e.g., coding agents like Cursor that work continuously)
- **Multi-step automation** — agents that coordinate multiple tools and services end-to-end

This represents a fundamental shift in interaction patterns: from "ask and get an answer" to "give a task and come back later." ^[extracted]

## Enterprise Value

Deep research agents map directly to the "value when right" term in the [[concepts/enterprise-agent-adoption-equation|enterprise agent adoption equation]]. Research and summarization are high-value tasks — organizations already pay significant money for human researchers and analysts.

## Relation to Agent Types

Deep research agents can be either [[concepts/assistive-vs-automation-agents|assistive]] (presenting findings for human review) or [[concepts/assistive-vs-automation-agents|automation]] (delivering completed research reports autonomously). The distinction depends on whether a human reviews the output before action. ^[inferred]

## Related

- [[concepts/ambient-agents]] — Background agents that also run for extended periods
- [[concepts/assistive-vs-automation-agents]] — Agent classification framework
- [[concepts/enterprise-agent-adoption-equation]] — Value when right lever
- [[concepts/knowledge-work-automation]] — Knowledge work automation domain
