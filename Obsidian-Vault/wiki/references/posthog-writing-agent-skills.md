---
title: "What nobody tells you about writing agent skills — PostHog"
category: references
tags: [agent-skills, context-engineering, posthog, documentation, progressive-disclosure]
sources:
  - "https://x.com/posthog/status/2084345938089316582"
  - "https://x.com/posthog/article/2084345938089316582"
source_url: "https://x.com/posthog/status/2084345938089316582"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "PostHog's detailed guide to writing maintainable agent skills, covering progressive disclosure, flexible specifications, regeneration, agent feedback, and skill selection."
stub: false
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[concepts/agent-skill-engineering]]"
    type: implements
  - target: "[[entities/posthog]]"
    type: related_to
  - target: "[[concepts/context-engineering]]"
    type: extends
---

# What nobody tells you about writing agent skills — PostHog

> [!tldr] PostHog treats skills as context routers and reusable workflow contracts: load context progressively, leave execution judgment to the agent, regenerate against sources of truth, ask the agent for feedback, and only package work that merits maintenance.

## Overview

PostHog describes an internal practice of writing and shipping agent skills across its products. The article reports 226 skills in an internal store and 187 `SKILL.md` files across 28 products. ^[extracted]

The central argument is that skills are not merely miniature programs. They combine durable instructions with an agent's ability to inspect runtime context, choose tools, recover from failures, and adapt to cases the author could not enumerate. ^[extracted]

## Five Principles

### 1. Progressive disclosure

A skill's name and description must explain **when to reach for it**, because those fields remain in the agent's always-available context. The main `SKILL.md` should then route the agent to references, scripts, schemas, examples, or function indexes only when relevant. ^[extracted]

PostHog's SQL skill illustrates the pattern: the entry file explains when it is required and links to 26 schema files, 22 query examples, and a function index. ^[extracted]

### 2. Goals and constraints over procedures

A good skill is precise about the goal, constraints, and context the agent cannot derive. It should be ambiguous about the exact file-by-file path, failure cases, and volatile runtime details. ^[extracted]

Over-specified procedural skills break when the repository or data differs from the author's assumptions. Leaving the path open preserves the intelligence of the agent instead of reducing the skill to a brittle workflow. ^[extracted]

### 3. Preventing skill rot

PostHog recommends three anti-rot practices: separate durable structure from volatile content, point to a single source of truth, and regenerate rather than patch repeatedly. ^[extracted]

Its Wizard & Docs team applies this through a **context mill**:

1. **Sourcing** — collect documentation, curated prompts, and working example apps.
2. **Assembly** — package the material into a portable, self-contained zip manifest.
3. **Delivery** — publish a versioned release consumed by PostHog MCP resources, slash commands, and the install wizard. ^[extracted]

### 4. Questions before demands

PostHog suggests asking the agent what it can do, what it needs to do better, and how the previous run could improve the skill. The rationale is that the agent has direct evidence about available tools, reachable context, and failure modes that the author may not possess. ^[extracted]

### 5. Not everything deserves a skill

Skills have context and maintenance costs. PostHog recommends packaging workflows that recur, are error-prone, require domain context models do not have by default, or can run on autopilot. ^[extracted]

A proposed candidate should have repeated or likely-to-recur use, stable inputs, a clear output or stopping condition, and a material effect on speed, quality, consistency, or reliability. ^[extracted]

## Concepts

- [[concepts/agent-skill-engineering]] — general skill-authoring pattern
- [[concepts/progressive-disclosure-forms]] — deferred context loading
- [[concepts/context-engineering]] — the broader token-selection discipline
- [[concepts/instruction-budget]] — why skill descriptions need to stay compact
- [[concepts/continuous-eval-loops]] — autopilot workflows and feedback cycles

## Entities

- [[entities/posthog]] — company applying the pattern
- [[entities/ian-vanagas]] — credited author

## Open Questions

- What automated evals gate the 120+ generated integration skills?
- How does PostHog detect that a skill has become stale?
- How are conflicts handled when several skills match the same task?

## Related

- [[references/harness-skills-hub]]
- [[concepts/skills-checklist-framework]]
- [[concepts/agents-md]]

## Sources

- https://x.com/posthog/status/2084345938089316582
- https://x.com/posthog/article/2084345938089316582
