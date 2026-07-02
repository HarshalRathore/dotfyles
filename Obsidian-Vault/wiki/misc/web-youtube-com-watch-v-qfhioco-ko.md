---
title: "Full Walkthrough: Workflow for AI Coding — Matt Pocock"
category: misc
tags:
  - ai
  - workflow
  - tdd
  - autonomous-agents
  - matt-pocock
sources:
  - "watchv=-qfhioco-ko"
source_url: "https://www.youtube.com/watch?v=-QFHIoCo-Ko"
created: "2026-07-01"
updated: "2026-07-01"
summary: "Matt Pocock's hands-on workshop at AI Engineer covering the full AI-assisted development lifecycle: stress-testing requirements into PRDs, tracer bullet slicing, TDD with agents, and autonomous AFK runs."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-07-01
---

# Full Walkthrough: Workflow for AI Coding — Matt Pocock

Matt Pocock at AI Engineer (2026-04-24). 1h36m hands-on workshop.

## Overview

A full lifecycle workshop on AI-assisted development, from turning ambiguous requirements into agent-ready plans to running autonomous coding agents that ship production features. Follows the complete workflow: requirement gathering → structured PRDs → tracer bullet slicing → human-in-the-loop TDD → autonomous AFK runs → codebase design for AI effectiveness.

## Key Points

- **Stress-testing requirements** — how to turn vague briefs into structured PRDs that agents can execute against without ambiguity
- **Tracer bullet slicing** — slice work into thin vertical slices that an agent can grab independently. Each slice is independently implementable and testable
- **TDD with AI agents** — run an agent that selects tasks, writes tests, implements code, and commits. Start human-in-the-loop (review each step), then gradually reduce oversight
- **Prompt refinement** — observe where the agent struggles, then refine prompts based on those failure patterns. The agent's struggles are data about prompt gaps ^[inferred]
- **Graduating to autonomous (AFK) runs** — once the agent reliably passes tests and follows the workflow, let it run unattended. Monitor for test failures and only intervene when it gets stuck ^[inferred]
- **Codebase design for AI effectiveness** — structural choices (module boundaries, naming conventions, test organization) that make codebases more agent-friendly. Consistent patterns reduce the cognitive burden on the LLM context window ^[inferred]

## Concepts

- [[concepts/agent-loop]] — The agent loop lifecycle (goal → context → evaluation → agent) is the framework into which this workflow fits. Matt's workflow maps: PRD writing (goal), context gathering (context), TDD (evaluation), and autonomous runs (agent).
- [[concepts/ralph-coding-technique]] — Related approach: Ralph's "one item per loop" principle parallels Matt's tracer bullet slicing. Both emphasize small, independently verifiable work units.

## Entities

- [[entities/matt-pocock]] — TypeScript educator and workshop presenter

## Related

- [[entities/matt-pocock]] — Matt Pocock's entity page
- [[web-youtube-com-watch-v4f1gfy-hqg]] — Matt's other AI Engineer talk: "Software Fundamentals Matter More Than Ever"
- [[concepts/agent-loop]] — Agent loop concept page

## Open Questions

- Does this workshop workflow have a formal name or is it a live demonstration without a named methodology? ^[ambiguous]
- How does the "tracer bullet" vertical slicing approach compare to Ralph's "one item per loop" in practice — are they the same principle with different branding? ^[inferred]
