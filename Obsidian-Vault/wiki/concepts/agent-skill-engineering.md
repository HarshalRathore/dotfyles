---
title: Agent Skill Engineering
category: concepts
tags: [agent-skills, context-engineering, progressive-disclosure, maintainability, harness-engineering]
aliases: [skill engineering, writing agent skills]
relationships:
  - target: "[[concepts/progressive-disclosure-forms]]"
    type: extends
  - target: "[[concepts/context-engineering]]"
    type: implements
  - target: "[[concepts/ai-harness]]"
    type: related_to
sources:
  - "https://x.com/posthog/status/2084345938089316582"
  - "https://x.com/posthog/article/2084345938089316582"
summary: "Engineering reusable agent skills as context routers: progressive disclosure, goal-focused constraints, source-linked regeneration, agent feedback, and selective packaging."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
---

# Agent Skill Engineering

**Agent skill engineering** is the practice of designing reusable agent instructions as maintainable context routers rather than brittle scripts. The skill exposes a goal, constraints, and missing domain context, then defers detailed material and execution choices until the agent needs them. ^[extracted]

## Core Principles

1. **Route progressively.** Keep names and descriptions discoverable; load references, schemas, scripts, and examples on demand. ^[extracted]
2. **Specify outcomes, not every step.** State what done means, the guardrails, and context the agent cannot infer; leave file paths and recovery tactics open when the agent can inspect them. ^[extracted]
3. **Separate durable from volatile knowledge.** Hand-write stable structure and link changing details to a source of truth. ^[extracted]
4. **Regenerate instead of patching indefinitely.** Rebuild skills from stable inputs so fixes do not accumulate into contradictory or unfocused instructions. ^[extracted]
5. **Use the agent as a design partner.** Ask what it can do, what it needs, and how the prior run exposed improvements. ^[extracted]
6. **Package only high-value repetition.** A skill earns its maintenance cost when work repeats, is context-heavy or error-prone, or can be placed on an autonomous loop. ^[extracted]

## Skill as a Context Router

A useful skill is a small entry point into a larger information graph. Its frontmatter routes the agent to the skill, its main file establishes the contract, and linked references or scripts provide just-in-time depth. ^[inferred]

This makes progressive disclosure a retrieval and context-budget strategy, not merely a documentation style. [[concepts/progressive-disclosure-forms]] and [[concepts/context-engineering]] describe the broader pattern. ^[inferred]

## Skill Lifecycle

A practical lifecycle is:

1. Observe repeated work and failure patterns.
2. Define the goal, constraints, and evaluation signal.
3. Write a compact routing entry point.
4. Link durable sources of truth and executable helpers.
5. Run the skill and ask the agent what it needed or misunderstood.
6. Regenerate or restructure from updated sources instead of stacking patches.
7. Retire skills whose context or maintenance cost exceeds their value. ^[inferred]

## Relation to Harness Engineering

Skills are one surface of an [[concepts/ai-harness|agentic harness]]: they shape context assembly, tool selection, workflow boundaries, and verification without embedding every decision in the model or system prompt. ^[inferred]

## Related

- [[concepts/progressive-disclosure-forms]] — load context only when relevant
- [[concepts/context-engineering]] — token selection and structure
- [[concepts/instruction-budget]] — finite always-on instruction budget
- [[concepts/skills-checklist-framework]] — skill quality checks
- [[references/posthog-writing-agent-skills]] — detailed source
- [[entities/posthog]] — large-scale practitioner example

## Sources

- https://x.com/posthog/status/2084345938089316582
- https://x.com/posthog/article/2084345938089316582
