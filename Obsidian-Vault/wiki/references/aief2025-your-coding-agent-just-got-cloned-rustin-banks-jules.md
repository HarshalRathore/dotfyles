---
title: Your Coding Agent Just Got Cloned And Your Brain Isn't Ready
category: references
tags:
- aief2025
- parallel-agents
- coding-agents
- google-jules
- remote-agents
- async-agents
- agent-workflows
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - entities/rustin-banks|Rustin Banks
  type: related_to
- target:
  - - entities/google-jules|Google Jules
  type: related_to
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: introduces
- target:
  - - concepts/multiple-variations-parallelism|Multiple Variations Parallelism
  type: introduces
- target:
  - - concepts/remote-agents-as-a-service|Remote Agents as a Service
  type: exemplifies
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Your Coding Agent Just Got Cloned And Your Brain Isn't Ready
---

# Your Coding Agent Just Got Cloned And Your Brain Isn't Ready

**Speaker:** Rustin Banks, Google Labs
**Video:** https://www.youtube.com/watch?v=X4BwOu0GWb8
**Conference:** AI Engineer World's Fair 2025

## TL;DR

Rustin Banks, product manager for Google's Jules asynchronous coding agent, presented a framework for parallel agent workflows at AI Engineer World's Fair 2025. He demonstrated two types of parallelism — multitasking (multiple backlog items simultaneously) and multiple variations (same task, different approaches) — and gave a live demo of Jules building test suites, calendar integration, accessibility audits, and Lighthouse improvements on a conference schedule website. The key insight: parallel agents work when you have a clear definition of success (test suites, coverage metrics) and when agents run remotely in the cloud rather than inside the IDE.

## Problem / Motivation

Developers are wired to think serially — take a task from the queue, work on it, move to the next. This is the default workflow, but it doesn't scale when you want to maximize parallel agent usage. For parallel agent workflows to work well, developers need to get better at both the beginning (writing tasks) and the end (reviewing PRs, handling merges) of the workflow. ^[extracted]

## Method / Architecture

### Two Types of Parallelism

1. **Multitasking parallelism** — The expected type: 10 different backlog items, all processed at once, then merged together and tested. ^[extracted]

2. **Multiple variations parallelism** — An emergent, unexpected behavior: taking a single complex task and spinning up multiple agents to try different approaches (e.g., React Beautiful DnD vs DND Kit vs test-first for a drag-and-drop feature). The user or agent tests and chooses the best result. ^[extracted]

### Remote Agents as a Service

Agents running in the cloud (remote agents) are "infinitely scalable, always connected, and you can develop from anywhere from any device." This contrasts with IDE-internal agents that are "always going to be limited by our laptop." ^[extracted]

### Live Demo Architecture

Banks demonstrated Jules on Pal Love's conference schedule website:
- Jules connects to the developer's GitHub repos
- Creates its own cloud VM, cloning the entire codebase
- Runs all commands the developer can run
- Generates test suites, runs them, reports coverage metrics
- Creates branches, runs tests, merges PRs automatically
- Supports cross-device management (demoed from phone emulator) ^[extracted]

## Key Insights

- **Parallel agents require better task writing at the beginning** — AI can help convert backlogs and bug reports into tasks ^[extracted]
- **Critic/merging agents are needed at the end** — to bring parallel work together without "driving us crazy" ^[extracted]
- **Test coverage is the arbiter** — when running multiple variations, comparing test coverage helps choose the best approach ^[extracted]
- **The secret to parallel success is a clear definition of success** — test suites and coverage metrics serve as the objective measure ^[extracted]
- **AI should handle the "laundry" tasks** — accessibility audits, security audits, Lighthouse improvements — the important-but-neglected work ^[extracted]
- **40,000 public commits in two weeks** after Jules' public launch at AIEF2025 ^[extracted]

## Demo Highlights

1. **Test generation**: Jules created tests for calendar, search, and session components, achieving ~80% test coverage. Jest vs Playwright approaches were compared. ^[extracted]
2. **Calendar integration**: Jules added a "Add to Google Calendar" button with full test suite, working from a phone emulator. ^[extracted]
3. **AI summaries**: Gemini-powered summaries when clicking session descriptions. ^[extracted]
4. **Accessibility + Lighthouse**: Jules ran accessibility audits and improved Lighthouse scores simultaneously. ^[extracted]
5. **Octopus merge**: Multiple parallel agent outputs need to be merged together — a pattern Banks noted he ran out of time to complete in the demo. ^[extracted]

## Limitations

- The demo was cut short — Banks noted "Jules should help me with this merge" for the octopus merge, indicating the pattern is still emerging. ^[extracted]
- The talk was primarily front-end focused because Banks is "mostly a front-end engineer," though he noted these patterns apply to back-end as well. ^[extracted]
- Console errors were acknowledged but not addressed in the demo. ^[extracted]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — The two-type framework
- [[entities/google-jules|Google Jules]] — The agent demonstrated
- [[entities/rustin-banks|Rustin Banks]] — Speaker
- [[concepts/multiple-variations-parallelism|Multiple Variations Parallelism]] — Emergent behavior
- [[concepts/remote-agents-as-a-service|Remote Agents as a Service]] — Architecture pattern
- [[concepts/agent-coordination|Agent Coordination]] — Merging parallel work
