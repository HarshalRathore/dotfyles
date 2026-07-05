---
title: "Issue-to-PR Pipeline"
tags:
  - issue-to-pr
  - autonomous-agents
  - github
  - copilot
  - coding-agent
  - aief2025
summary: "The autonomous pipeline where a GitHub Issue is assigned to a coding agent, which creates a branch, implements, tests, and opens a PR — with human review as the final gate."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: feature-of
  - target: "[[concepts/coding-agent-security-model|Coding Agent Security Model]]"
    type: constrains
  - target: "[[concepts/copilot-workload-spectrum|Copilot Workload Spectrum]]"
    type: exemplifies
---

# Issue-to-PR Pipeline

The **issue-to-PR pipeline** is the autonomous workflow where a GitHub Issue is assigned to a coding agent, which creates a branch, implements the solution, runs tests, and opens a PR — with human review as the final gate. ^[extracted]

## The Pipeline

1. A well-scoped Issue is assigned to Copilot.
2. Copilot creates a branch, implements, tests, and opens a PR autonomously.
3. The human reviews: accept, comment for refinement, or destroy and reassign.
4. All work happens in isolation — its own branch, protected environment, never touching `main` directly. ^[extracted]

## Iteration Modes

[[entities/jon-peck|Jon Peck]] demonstrated two ways to iterate when the agent's output needs changes: ^[extracted]

- **Comment on the PR** — Add a comment like "also add an endpoint to search for games by name." Copilot starts a new session, taking previous work into account.
- **Reassign for fresh start** — Remove Copilot as assignee and re-assign. It starts completely from scratch.

## Diagnostic Approach

When the agent gets something wrong, the first question should be "why?" — nine times out of ten, the answer is context: insufficient information in the issue, instructions file, or MCP setup. ^[extracted]

## Security Constraints

The pipeline operates under the [[concepts/coding-agent-security-model|Coding Agent security model]]: firewalled, ephemeral, branch-only, draft PRs, workflow approval gating, and no self-review. ^[extracted]

## Related

- [[entities/christopher-harrison|Christopher Harrison]] — who presented the pipeline at AIEF2025
- [[concepts/coding-agent-security-model|Coding Agent Security Model]] — the safety constraints
- [[concepts/copilot-workload-spectrum|Copilot Workload Spectrum]] — the Coding Agent is level 5

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
