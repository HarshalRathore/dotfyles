---
title: "Issue-to-PR Pipeline"
tags:
  - concept
  - automation
  - agents
  - github
  - cicd
aliases: [autonomous issue resolution, AI PR pipeline, Copilot issue assignment]
sources:
  - "AIEF2025 - Unlocking AI Powered DevOps Within Your Organization — Jon Peck, GitHub - https://www.youtube.com/watch?v=C1NivhYS1sI"
  - "AIEF2025 - Ship Agents that Ship: A Hands-On Workshop - Kyle Penfound, Jeremy Adams, Dagger - https://www.youtube.com/watch?v=Fzb1a24hF-o"
  - "AIEF2025 - Collaborating with Agents in your Software Dev Workflow — Jon Peck & Christopher Harrison, Microsoft - https://www.youtube.com/watch?v=G1hhmz6mXT0"
summary: "Assigning GitHub Issues directly to an AI agent (Copilot), which autonomously creates a branch, writes code, runs tests, and submits a pull request — with human review as the final gate before merge."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03

# Issue-to-PR Pipeline

The issue-to-PR pipeline is an autonomous workflow where a GitHub Issue is assigned to an AI agent ([[entities/github-copilot|Copilot]]), which independently creates a branch, implements the changes, runs tests, and opens a pull request — all without human intervention during execution. The approach was demonstrated by [[entities/jon-peck|Jon Peck]] of [[entities/github-copilot|GitHub]] at AI Engineer World's Fair 2025.

## Workflow

1. A well-scoped GitHub Issue is written (like a well-shaped prompt) — specifying the exact change, expected outcomes, and test requirements. ^[extracted]
2. The issue is assigned to Copilot, which autonomously creates a branch, implements, and submits a PR. ^[extracted]
3. A human reviews the resulting PR with three outcomes ^[extracted]:
   - **Terrible:** destroy the PR and reassign with a refined issue.
   - **Close but imperfect:** add comments to the PR; Copilot refines iteratively.
   - **Good to merge:** run standard CI/CD, approve, merge.

## Safety Architecture

Peck and Harrison detail the Coding Agent safety model ^[extracted]:

- **Firewalled by default** — No internet access. Dependencies pre-installed or firewall explicitly opened. ^[extracted]
- **Ephemeral environment** — Runs inside GitHub Actions; environment per-session, destroyed after. ^[extracted]
- **Branch-only access** — Can only modify its own branch, never main or other resources. ^[extracted]
- **Draft PRs only** — Creates PRs in draft form. Human must convert to real PR. ^[extracted]
- **Workflow approval gating** — CI/security checks don't run until human clicks "approve workflow runs." ^[extracted]
- **No self-review** — Issue assignee cannot review the PR. Someone else must review the agent's code. ^[extracted]
- **Human-in-the-loop** — The human is always the final gate. "Don't skip that step." ^[extracted]

## Iteration Modes

When the agent's output isn't right, two approaches ^[extracted]:

1. **Comment on the PR** — Add a comment for refinement. Copilot starts a new session building on previous work. ^[extracted]
2. **Reassign for fresh start** — Remove and re-assign Copilot. It starts completely from scratch. ^[extracted]

When the agent gets something wrong, first ask "why?" — usually insufficient context in the issue, instructions file, or MCP setup. ^[extracted]

## DevOps Flow Unchanged

"AI does not change the DevOps flow." ^[extracted] All existing safeguards still apply to agent-generated PRs: manual code review, linters, security scans, unit tests, explicit approval before workflow execution. ^[extracted]

## Prerequisites for Success

The quality of the issue determines the quality of the result — writing a well-shaped issue is analogous to writing a well-shaped prompt. The issue should specify: focus areas, exact deliverables, expected outcomes, and test requirements. ^[extracted]

## Suitable Issue Types

Best suited for well-scoped, contained tasks: documentation gaps, test generation, focused feature additions. Less suitable for broadly-scoped architectural changes or high-risk production modifications. ^[inferred]

## Related Pattern: Dagger Label-Triggered Agent Pipeline

A complementary implementation demonstrated by [[entities/kyle-penfound|Kyle Penfound]] and [[entities/jeremy-adams|Jeremy Adams]] ([[entities/dagger|Dagger]]) at AIEF2025 uses a different trigger mechanism and execution platform. Rather than assigning an issue to Copilot, a GitHub label (`develop`) on the issue triggers a [[entities/github-copilot|GitHub Actions]] workflow that runs a Dagger module: ^[extracted]

1. A GitHub issue is written and labeled `develop`
2. GitHub Actions runs a Dagger function that reads the issue body as the agent's assignment
3. The Dagger agent (connected to an LLM) reads the source code, edits files in a container-sandboxed workspace, runs the project's actual tests, and iterates until tests pass
4. The Dagger function creates a PR with `closes #issue` in the body — automatically linking to the original issue
5. Human reviews the resulting PR ^[extracted]

Key differences from the Copilot-native approach: ^[inferred]

- **Trigger mechanism** — label-based (anyone who can label an issue can trigger) vs assignment-based (requires explicit issue assignment)
- **Execution environment** — runs in GitHub Actions via Dagger's container engine vs Copilot's internal infrastructure
- **Validation** — uses the project's actual test suite as a validation gate within the agent loop, not just during CI after PR creation
- **Tool scope** — the agent has access to exactly the tools defined in the Dagger workspace module (read, write, list, test) — no more, no less
- **Container sandboxing** — all agent execution happens in containers isolated from the host filesystem

See [[concepts/dagger-agent-platform]] for the full pattern.

## Related

- [[concepts/ai-powered-devops]] — AI across the full DevOps lifecycle
- [[concepts/agent-loop]] — The agent loop pattern underlying autonomous execution
- [[concepts/brownfield-first-ai-adoption]] — Learning strategy for AI-assisted development
- [[concepts/human-in-the-loop-regulated-ai]] — Human oversight patterns in AI workflows
- [[concepts/copilot-instructions]] — Codifying standards so autonomous agents follow team practices
- [[concepts/dagger-agent-platform]] — Dagger's label-triggered agent pipeline as an alternative implementation
- [[entities/dagger]] — The Dagger platform
- [[entities/kyle-penfound]] — Co-presenter of the Dagger agent pipeline workshop
- [[entities/jeremy-adams]] — Co-presenter of the Dagger agent pipeline workshop

## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
- AIEF2025 — Ship Agents that Ship: A Hands-On Workshop, Kyle Penfound, Jeremy Adams, Dagger. https://www.youtube.com/watch?v=Fzb1a24hF-o

