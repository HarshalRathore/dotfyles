---
title: "Plan-Then-Code Workflow"
category: concepts
tags: [planning, ai-agents, workflow, ai-coding, aief2025]
summary: A workflow pattern where AI coding agents are forced to generate a plan before writing any code, enforced through system prompt manipulation.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/spec-first-development|Spec-First Development]]"
    type: relates_to
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: contrasts_with
  - target: "[[concepts/plan-then-code-spectrum|Plan-Then-Code Spectrum]]"
    type: extends
---

# Plan-Then-Code Workflow

The **plan-then-code workflow** is an AI coding pattern where the agent is forced to generate a structured plan before writing any code. This is enforced not by asking the agent politely, but by manipulating its system prompt to make planning a mandatory step.^[extracted]

## Implementation

Josh Albrecht (Imbue) demonstrates this in [[entities/sculptor|Sculptor]] through a two-phase workflow:

1. **Planning phase** — The system prompt is configured to require the agent to create a plan without writing any code. The user waits for the plan to be generated.^[extracted]
2. **Coding phase** — The system prompt is changed to instruct the agent to now create the actual code, presumably following the previously generated plan.^[extracted]

The key insight is that changing the system prompt forces the behavior more strongly than simply instructing the agent. This allows users to build up larger, more reliable workflows — always plan first, then code, then run checks — by creating customized agent configurations.^[extracted]

## Why Planning Matters for AI Agents

Planning before coding addresses a fundamental problem with AI-generated code: without a plan, agents tend to produce code that works for the immediate request but may be architecturally inconsistent with the existing codebase. A planning phase allows the agent to reason about the overall structure before committing to implementation details.^[inferred]

## Relation to Vibe Coding

Plan-then-code workflows contrast with [[concepts/vibe-coding|vibe coding]], which emphasizes rapid prototyping without upfront planning. The plan-then-code approach is more aligned with production engineering, where architectural decisions matter and code is not simply iterated away.^[inferred]
