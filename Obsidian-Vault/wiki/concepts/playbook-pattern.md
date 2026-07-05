---
title: "Playbook Pattern"
category: concepts
tags:
  - ai-agents
  - instruction-following
  - agent-systems
  - software-engineering
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "A system for outlining clear step-by-step instructions that AI agents follow reliably. Built by Cognition for Devin to handle repetitive migrations across thousands of files."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Playbook Pattern

The **playbook pattern** is an approach to AI agent interaction where a clear, structured set of step-by-step instructions is provided upfront, and the agent executes each step reliably and in order.

## Origin

Built by **Cognition** for **Devin** during the summer of 2024 to handle repetitive code migrations (JavaScript-to-TypeScript, Angular version upgrades, Java version migrations) across thousands of files.

## How It Works

1. A human outlines a clear set of steps required for the task
2. The agent follows each step sequentially
3. The agent executes exactly what each step specifies
4. Results are verified at each step before proceeding

## When It Works Best

The playbook pattern excels at tasks that are:

- **Repetitive** — The same steps apply across many files
- **Well-defined** — Clear, documented procedures exist (e.g., framework upgrade guides)
- **Not purely deterministic** — No classical program can solve them, but the steps are clear enough for an agent to follow
- **Boilerplate-heavy** — Tedious, time-consuming work for humans

## Limitations

The playbook pattern does NOT work well for tasks that are:

- Open-ended or exploratory
- Require creative problem-solving beyond following steps
- Involve diagnosing unknown root causes
- Require understanding complex code hierarchies

As Scott Wu noted, "a lot of software engineering does not fall under the category of literally just follow ten steps step by step." ^[extracted]

## Evolution Beyond Playbooks

As agent capabilities advanced, the playbook pattern was supplemented by:

- **Agent memory** — Maintaining learnings across repeated tasks
- **Repository snapshots** — Managing execution environments
- **Code hierarchy understanding** — Going beyond text to understand code structure

## Related Pages

- [[entities/cognition]] — Company that built the Playbook system
- [[entities/devin]] — Agent that uses playbooks
- [[concepts/repetitive-migrations]] — Primary use case for playbooks
- [[concepts/agent-capability-tiers]] — Tier 2 capability enabled by playbooks
