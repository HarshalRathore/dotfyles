---
title: "OpenHands"
category: entities
tags: [agent, opensource, coding-agent, software-development]
aliases:
  - OpenDevon
summary: Open source software development agent formerly known as OpenDevon. Built by Robert Brennan and team. Agents run in Docker containers by default with scoped credentials.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.92
  inferred: 0.08
  ambiguous: 0.00
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/robert-brennan|Robert Brennan]]"
    type: related_to
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: uses
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: implements
---

# OpenHands

**OpenHands** (formerly known as **OpenDevon**) is an open source software development agent built by Robert Brennan and his team. It represents the autonomous end of the coding tool spectrum — agents that take one or two sentences as input and work for 5–15 minutes to produce a solution.

## Architecture

OpenHands agents operate through a core loop between an LLM (the "brain") and the external world, with three primary tools:

1. **Code editor** — Uses diff-based editing (find-and-replace) rather than full-file regeneration to save tokens on large files. May also provide abstract syntax tree navigation. ^[extracted]
2. **Terminal** — Handles long-running commands, parallel execution, and background processes (e.g., starting a server then curling it). ^[extracted]
3. **Web browser** — Converts pages to accessibility trees or markdown instead of raw HTML. Supports screenshot-based interaction with labeled nodes for clicking. ^[extracted]

All agents run inside Docker containers by default, fully separated from the host workstation. ^[extracted]

## Security Model

- Docker container sandboxing by default
- Third-party API access (GitHub tokens, AWS credentials) must be tightly scoped
- Follows the principle of least privilege for agent credentials ^[extracted]

## Recent Development

A contribution approximately one month before the AIEF2025 talk doubled OpenHands' accuracy on web browsing tasks. ^[extracted]

## Related

- [[entities/robert-brennan|Robert Brennan]] — Co-founder
- [[concepts/agent-loop|Agent Loop]] — Core architecture pattern
- [[concepts/agent-tools|Agent Tools]] — Code editor, terminal, browser tooling
- [[concepts/assistive-vs-automation-agents|Assistive vs Automation Agents]] — OpenHands is an automation agent
- [[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]] — Browser interaction approaches
