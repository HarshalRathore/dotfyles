---
title: "Ship Agents that Ship: A Hands-On Workshop — Kyle Penfound, Jeremy Adams, Dagger (AIEF2025)"
tags:
  - reference
  - talk
  - aief2025
  - dagger
  - agents
  - workshop
  - cicd
aliases: [Dagger agents workshop AIEF2025, Ship Agents that Ship]
summary: "Hands-on workshop at AI Engineer World's Fair 2025 demonstrating how to build container-sandboxed software engineering agents using Dagger's LLM primitives, from local development through GitHub issue-to-PR automation."
sources:
  - "AIEF2025 - Ship Agents that Ship: A Hands-On Workshop - Kyle Penfound, Jeremy Adams, Dagger - https://www.youtube.com/watch?v=Fzb1a24hF-o"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Ship Agents that Ship: A Hands-On Workshop

> **Speaker:** [[entities/kyle-penfound|Kyle Penfound]] and [[entities/jeremy-adams|Jeremy Adams]] ([[entities/dagger|Dagger]])
> **Event:** AI Engineer World's Fair 2025 (AIEF2025)
> **Link:** https://www.youtube.com/watch?v=Fzb1a24hF-o

A hands-on workshop building a container-sandboxed software engineering agent using [[entities/dagger|Dagger]]'s LLM primitives. The workshop walked through constructing a typed agent environment with scoped tools, connecting it to an LLM, and deploying the agent to [[entities/github-copilot|GitHub Actions]] as an automated issue-to-PR pipeline.

## Key Concepts

- [[concepts/dagger-agent-platform]] — The agent platform pattern demonstrated throughout the workshop
- [[concepts/issue-to-pr-pipeline]] — The GitHub label-triggered agent automation pipeline
- [[concepts/agent-design-patterns]] — Dagger's tool-scoping approach as a reliability pattern

## Workshop Structure

### Part 1: Dagger Foundations

Installed the Dagger CLI and created a Dagger module for a Vue.js project with build, test, and publish functions. Established the CI/CD pattern that would later be handed to the agent. ^[extracted]

### Part 2: Workspace Module

Created a sub-module (`workspace`) with four file system functions for the agent: `read_file`, `write_file`, `list_files`, and `test`. These formed the agent's tool set — the "robot body." ^[extracted]

### Part 3: Agent Function

Created a `develop` function that:
1. Defines a typed environment with workspace input (source code), assignment string, and workspace output (completed work)
2. Loads a prompt from `develop-prompt.md` that instructs the LLM to analyze first, avoid unnecessary changes, always run tests, and not stop until tests pass
3. Connects the environment and prompt via `dagger.LLM(environment=env, prompt=prompt)` — the entire agent is a single function call
4. Post-validates by running tests deterministically after the agent completes
5. Returns the completed directory ^[extracted]

### Part 4: GitHub Issue-to-PR Pipeline

Extended the agent with:
- A GitHub module (from the Daggerverse) for listing issues, reading issue bodies, creating PRs
- A `develop-issue` function that reads a GitHub issue body as the assignment, runs the agent, then creates a PR with `closes #issue`
- A three-line GitHub Actions workflow triggered by the `develop` label on issues ^[extracted]

### Part 5: Multi-Agent and Feedback

Demonstrated more advanced patterns:
- Agents as tools within other agents' environments
- A `slash review` agent that reviews PRs and provides feedback
- A test-failure repair agent that automatically fixes broken tests ^[extracted]

## Key Quotes

> "You want the right amount of tools for that agent to solve its task. It needs the flexibility to solve complex problems, but you don't want so many tools that now this is a generalized agent that does anything." — Kyle Penfound ^[extracted]

> "That's probably the biggest thing in creating reliable agents with Dagger: giving flexibility where it's important for completing tasks and removing it where you know exactly how things are meant to happen." — Kyle Penfound ^[extracted]

> "Dagger gives you this platform to create software engineering workflows that can be used for shipping software, for developing software, and then you can hand them off to agents." — Jeremy Adams ^[extracted]

## Technical Details

- **Prompt file:** `deploy-prompt.md` with instruction structure ("before you write code, analyze the workspace"; "don't make unnecessary changes"; "always run the test"; "don't stop until assignment completed and tests pass") ^[extracted]
- **LLM providers:** OpenAI, Anthropic (Claude), Gemini, local via Ollama, Bedrock, Docker model runner — bring your own model ^[extracted]
- **Secrets management:** Supports 1Password integration, so API keys are never echoed in config files ^[extracted]
- **Cross-language:** Workshop used Python for the agent, but the workspace module could be written in any language ^[extracted]
- **Validation:** Agent's container execution means changes are never written to the host filesystem until explicitly exported after test validation passes ^[extracted]
- **GitHub Actions workflow install:** Single `dagger-for-github` action installs Dagger, then one command runs the full agent pipeline ^[extracted]

## Related

- [[entities/dagger]] — The Dagger platform
- [[entities/kyle-penfound]] — Co-presenter
- [[entities/jeremy-adams]] — Co-presenter
- [[concepts/dagger-agent-platform]] — Agent platform pattern
- [[concepts/issue-to-pr-pipeline]] — Autonomous issue resolution
- [[concepts/agent-loop]] — Agent loop pattern underlying Dagger's LLM function
- [[concepts/stateful-environments]] — Shared containerization principle for agent environments
- [[references/aief2025-ciam-for-ai-michael-grinich]] — Another AIEF2025 talk on agent security boundaries
- [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra]] — Agent-workflow composition taxonomy

## Sources

- AIEF2025 — Ship Agents that Ship: A Hands-On Workshop, Kyle Penfound, Jeremy Adams, Dagger. https://www.youtube.com/watch?v=Fzb1a24hF-o
