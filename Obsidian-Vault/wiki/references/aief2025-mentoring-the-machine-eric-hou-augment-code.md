---
title: "AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code"
tags:
  - reference
  - talk
  - aief2025
  - ai-agents
  - mentoring
  - augment-code
aliases:
  - Mentoring the Machine
  - Eric Hou AIEF2025
sources:
  - "AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/eric-hou|Eric Hou]]
    type: speaker
  - target: [[entities/augment-code|Augment Code]]
    type: affiliation
---

# AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code

**Speaker:** Eric Hou, Member of Technical Staff at Augment Code
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=Zniw5c9_jx8

## Summary

Eric Hou delivered a personal narrative about how Augment Code uses AI agents to build production-grade software, and how this changed their team operations and business model. The talk demonstrated a real Tuesday where three simultaneous engineering challenges were solved in half a day using the "mentoring the machine" approach.

## Structure

The talk was organized into four sections: ^[extracted]

1. Eric's personal journey as an engineer at Augment learning to use agents effectively
2. How other engineers at Augment learned to use agents most effectively
3. Gaps that organizations face when adopting agentic AI
4. How to address those gaps to solve current problems and unlock new opportunities

## Key Demonstration

Eric described a Tuesday where he faced three simultaneous challenges: ^[extracted]

- A critical design system component due (9 a.m.)
- A staging emergency with API endpoint breakage (9:30 a.m.)
- A new hire needing mentoring on the extension system (10:15 a.m.)

Using Augment agents, he completed all three in roughly half a day of active keyboard time. The most impressive example was a gRPC library upgrade touching 12 services and 20,000 lines of code — work estimated at three weeks by normal organizations — completed and tested by agents in a single day. ^[extracted]

## Core Thesis

The real transformation is not just completing work in parallel, but **unlocking time that previously did not exist**. ^[extracted] The key insight: to make the most use of AI, we need to work with agents as we would work with junior engineers — mentoring them, not assigning tickets. ^[extracted]

## Related Pages Created

- [[entities/eric-hou|Eric Hou]] — Speaker entity
- [[concepts/agent-mentoring-model|Agent Mentoring Model]] — Core framework
- [[concepts/context-gap|Context Gap]] — Three dimensions of missing context
- [[concepts/perpetually-junior-engineer|Perpetually Junior Engineer]] — AI characterization
- [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]] — Human-agent orchestration
- [[concepts/agent-evaluation-role|Agent Evaluation Role]] — Human's shifted responsibility
- [[concepts/knowledge-infrastructure|Knowledge Infrastructure]] — Systems enabling autonomous agents
- [[concepts/context-switching-costs|Context Switching Costs]] — 23 min recovery, $300B industry cost
- [[entities/augment-slack-bot|Augment Slack Bot]] — Knowledge infrastructure component
