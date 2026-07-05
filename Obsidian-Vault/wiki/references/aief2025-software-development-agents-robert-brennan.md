---
title: "Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands"
category: references
tags: [aief2025, coding-agents, agent-best-practices, agent-tools, opensource, openhands]
summary: Robert Brennan (OpenHands) at AIEF2025 shares practical lessons on coding agents: how they work under the hood, tooling choices, sandboxing, and best practices for getting started.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.98
  inferred: 0.02
  ambiguous: 0.00
base_confidence: 0.92
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/robert-brennan|Robert Brennan]]"
    type: related_to
  - target: "[[entities/openhands|OpenHands]]"
    type: related_to
---

# Software Development Agents: What Works and What Doesn't

**Speaker:** Robert Brennan, Co-founder, OpenHands
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=o_hhkJtlbSs

## TL;DR

Robert Brennan shares practical lessons from building and using OpenHands (formerly OpenDevon), an open source autonomous coding agent. He argues that coding is going away but software engineering is not — the human role shifts from writing code to critical thinking, user empathy, and architecture. He explains how coding agents work under the hood (LLM + external world loop with code editor, terminal, and browser tools), contrasts them with tactical code generation tools, and covers best practices for getting started.

## Problem / Motivation

The meaning of "agent" has drifted over time. There is confusion about what coding agents actually are, how they differ from autocomplete tools like GitHub Copilot, and how to use them effectively in practice. Brennan aims to build intuition by explaining what happens under the surface. ^[extracted]

## Key Concepts

### Coding Is Going Away

Software engineers will spend significantly less time writing code, but software engineering as a discipline will not disappear. The human role shifts toward:

- Critical thinking about problems
- User empathy — understanding what users actually want
- Business-level objective alignment
- Architectural decisions for future-proof systems

The AI handles the inner loop (write code, run code, iterate). Humans handle the big picture. ^[extracted]

### The Agent Loop

At its core, an agent is a loop between an LLM (serving as the "brain") and the external world. At each step:

1. Ask the LLM: what's the next action to get closer to the goal?
2. Execute the action (read file, make edit, run command, visit web page)
3. Capture the output
4. Feed it back to the LLM for the next turn

### Agent Tools

Three core tools for coding agents:

1. **Code editor** — Diff-based editing (find-and-replace) rather than full-file regeneration saves tokens on large files. AST navigation may also be provided. ^[extracted]
2. **Terminal** — Challenges include long-running commands with no output, parallel execution, background processes, and server-curl patterns. ^[extracted]
3. **Web browser** — Most complex tool. Accessibility trees or markdown conversion outperforms raw HTML. Screenshot-based interaction with labeled nodes works well for clicking. ^[extracted]

### Sandboxing

Agents running autonomously for minutes need isolation:

- Docker containers by default (separated from host)
- Third-party API access must be tightly scoped
- Principle of least privilege for credentials ^[extracted]

### Best Practices

1. **Start small** — Single-commit tasks with clear definitions of done (failing tests, merge conflicts, lint errors)
2. **Be specific** — Tell agents not just what to do, but how: frameworks, strategies (TDD), specific files/functions
3. **Specificity improves accuracy AND speed** — Less exploration time, more focused execution ^[extracted]

### Results

At OpenHands, ~90% of code goes through the agent; only ~10% requires direct IDE work. ^[extracted]

## Related

- [[concepts/agent-loop|Agent Loop]] — The core loop architecture
- [[concepts/agent-tools|Agent Tools]] — Code editor, terminal, browser as agent tools
- [[concepts/assistive-vs-automation-agents|Assistive vs Automation Agents]] — Contrast with tactical code gen
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Security and isolation
- [[concepts/agent-driven-development|Agent-Driven Development]] — The workflow shift
- [[entities/robert-brennan|Robert Brennan]] — Speaker
- [[entities/openhands|OpenHands]] — The agent platform
