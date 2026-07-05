---
title: "Coding Agent Security Model"
tags:
  - coding-agent
  - security
  - github
  - safety-model
  - aief2025
  - copilot
summary: "The six-layer safety architecture for GitHub's autonomous Coding Agent: firewalled, ephemeral, branch-only, draft PRs, workflow approval gating, and no self-review."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: describes
  - target: "[[concepts/copilot-workload-spectrum|Copilot Workload Spectrum]]"
    type: constrains
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: relates-to
---

# Coding Agent Security Model

The **Coding Agent security model** is the six-layer safety architecture that constrains [[entities/github-copilot|GitHub Copilot]]'s highest-autonomy mode — the Coding Agent that works autonomously on GitHub Issues. ^[extracted]

## The Six Layers

### 1. Firewalled by Default

The Coding Agent has no internet access. Frameworks and libraries must either be pre-installed via setup steps or holes must be explicitly opened in the firewall. ^[extracted]

### 2. Ephemeral Environment

Runs inside GitHub Actions, launched per-session and destroyed after. No persistent state between sessions. ^[extracted]

### 3. Branch-Only Access

Can only modify its own branch. Never main, never other branches, never other resources. ^[extracted]

### 4. Draft PRs Only

Creates pull requests in draft form, never as full PRs. A human must explicitly convert to a real PR. ^[extracted]

### 5. Workflow Approval Gating

Security checks, unit tests, and other CI workflows on the PR don't run until a human clicks "approve workflow runs." ^[extracted]

### 6. No Self-Review

The person who assigned the issue cannot review the PR. By design, someone else must review the agent's work — enforcing the standard practice that no one reviews their own code. ^[extracted]

## Design Philosophy

The security model reflects a key insight: autonomous agents should operate in a sandbox that is permissive enough to be useful but constrained enough to be safe. ^[inferred] Each layer addresses a specific risk vector:

- **Firewall** → prevents unauthorized external access
- **Ephemeral** → prevents state accumulation and resource abuse
- **Branch-only** → prevents damage to production code
- **Draft PRs** → prevents accidental merges
- **Workflow gating** → prevents untested code from reaching CI
- **No self-review** → prevents blind spots in code review

## Related

- [[entities/christopher-harrison|Christopher Harrison]] — who presented the security model at AIEF2025
- [[entities/jon-peck|Jon Peck]] — who demonstrated the model in the companion talk
- [[concepts/copilot-workload-spectrum|Copilot Workload Spectrum]] — the Coding Agent is level 5
- [[concepts/agent-sandboxing|Agent Sandboxing]] — the broader pattern of constraining agent actions

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
