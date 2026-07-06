---
title: Agent as Laundry
category: concepts
tags:
- async-agents
- agent-metaphor
- background-tasks
- coding-agents
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/asynchronous-coding-agents|Asynchronous Coding Agents
  type: exemplifies
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/ai-audits-accessibility-security|AI Audits: Accessibility and Security
  type: relates_to
- target:
  - - concepts/agent-at-scale|Agent at Scale
  type: relates_to
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Agent as Laundry
---

# Agent as Laundry

The "agent as laundry" metaphor describes the role of AI coding agents as handling the mundane, repetitive, important-but-neglected tasks that developers consistently defer — the "laundry" of software development. This metaphor was coined by Rustin Banks at AI Engineer World's Fair 2025. ^[extracted]

## The Metaphor

Rustin Banks described Jules as a tool that "does the laundry, so to say, so that you can focus on the art of coding." ^[extracted] The metaphor captures several key ideas:

### Laundry vs. Art

- **Laundry** = necessary but unglamorous work (tests, audits, updates, cleanup)
- **Art** = creative, high-value work (architecture, design, complex problem-solving)

The division of labor: agents handle laundry, developers focus on art. ^[extracted]

## What Counts as "Laundry"

Tasks that are important but consistently pushed to the backlog:
- **Accessibility audits** — WCAG compliance checks and fixes ^[extracted]
- **Security audits** — Vulnerability scanning and patching ^[extracted]
- **Lighthouse improvements** — Performance optimization ^[extracted]
- **SDK updates** — Firebase SDK updates, dependency upgrades ^[extracted]
- **Test generation** — Creating and maintaining test suites ^[extracted]
- **Documentation** — README maintenance, API docs ^[extracted]

These tasks "seem to go on the backlog but are really important." ^[extracted]

## Why Agents Are Ideal for Laundry

1. **No creative demand** — Laundry tasks are procedural, not creative
2. **Repetitive** — Agents excel at repetitive, well-defined tasks
3. **Important but deferred** — Developers naturally prioritize creative work over maintenance
4. **Testable** — Laundry tasks have clear pass/fail criteria (tests pass, scores improve)
5. **Async-friendly** — Laundry doesn't require immediate feedback

## Impact

When agents handle laundry:
- Developers' time is freed for high-value creative work
- Important but neglected tasks get done consistently
- Code quality improves through regular maintenance
- The backlog of "important but not urgent" work shrinks ^[inferred]

## Related Pages

- [[concepts/asynchronous-coding-agents|Asynchronous Coding Agents]] — Agent paradigm
- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Multi-agent laundry
- [[concepts/ai-audits-accessibility-security|AI Audits: Accessibility and Security]] — Laundry examples
- [[entities/google-jules|Google Jules]] — Implementation
