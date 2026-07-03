---
title: "Dagger Agent Platform"
tags:
  - concept
  - agent
  - architecture
  - container
  - sandbox
  - cicd
  - dagger
aliases: [Dagger agents, containerized agent environments, Dagger LLM function]
summary: "Architectural pattern where containerized Dagger modules serve as scoped, typed agent environments with sandboxed execution, test-driven validation, and cross-language module interop."
sources:
  - "AIEF2025 - Ship Agents that Ship: A Hands-On Workshop - Kyle Penfound, Jeremy Adams, Dagger - https://www.youtube.com/watch?v=Fzb1a24hF-o"
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Dagger Agent Platform

The Dagger agent platform is an architectural pattern for building software engineering agents using [[entities/dagger|Dagger]]'s container workflow engine. Rather than being a standalone agent framework, it leverages Dagger's existing infrastructure — containers, directories, files, and now LLMs as first-class primitives — to create typed, sandboxed execution environments for agents. The pattern emerged from Dagger's ecosystem team, demonstrated at AI Engineer World's Fair 2025. ^[extracted]

## Core Principle: Environment as Robot Body, LLM as Brain

The central architectural insight is a clear separation between the agent's environment and its reasoning engine: ^[extracted]

- **The environment (robot body)** — the containerized workspace with scoped tools (file operations, test runners, build commands), typed inputs (assignment, source code), and typed outputs (completed source, test results). Tool descriptions are automatically generated from Dagger module function signatures. ^[extracted]
- **The LLM (brain)** — a pluggable reasoning engine (OpenAI, Anthropic, Gemini, local models) that observes the environment, selects tools, and iterates until the task is complete. ^[extracted]

## Key Design Decisions

### 1. Tool Scope Over Tool Abundance

The most important design choice is determining the right scope of tools for the agent: ^[extracted]

> "You want the right amount of tools for that agent to solve its task. It needs the flexibility to solve complex problems, but you don't want so many tools that now this is a generalized agent that does anything. It needs to have some amount of focus so that it can solve a specific set of problems really well." — Kyle Penfound ^[extracted]

The tension is between **flexibility** (enough tools to handle unknown requirements) and **reliability** (too many tools causes agent confusion and failure). The recommended approach is iterative: build minimal tool sets, observe agent behavior, and expand only where the agent consistently fails due to missing capabilities. ^[inferred]

### 2. Container Sandboxed Execution

All agent work happens inside containers, never directly on the host filesystem: ^[extracted]

- Changes are isolated — the agent edits files inside a container, not the host
- Multiple agent instances can run in parallel without state conflicts
- Failed or undesired agent runs leave no trace on the machine
- No development tools need to be installed on the host — Dagger itself provides containers for Python, Node.js, Go, etc. ^[extracted]
- This is analogous to the [[concepts/stateful-environments|stateful environments]] pattern for vertical agents, applied to code generation

### 3. Tests as Validation Guardrails

Rather than relying on the LLM's self-evaluation, the agent uses the project's actual test suite as its validation mechanism: ^[extracted]

- The workspace module includes a `test` function that runs the real project tests
- The agent is instructed to call tests after every code change
- If tests fail, the agent sees the failures and iterates with full context
- After the agent loop completes, deterministic Dagger code independently runs tests again as a final quality gate ^[extracted]

This is the key reliability insight: give the agent the exact test command it should use, not freedom to invent test invocations. ^[inferred]

> "That's probably the biggest thing in creating reliable agents with Dagger: giving flexibility where it's important for completing tasks and removing it where you know exactly how things are meant to happen." — Kyle Penfound ^[extracted]

### 4. Typed Interfaces as Self-Documenting Tool Descriptions

Dagger module function signatures (parameters with doc strings, return types) are automatically transformed into tool descriptions that the LLM can consume. This means: ^[extracted]

- No manual JSON tool specification authoring
- Tool descriptions stay in sync with code automatically
- Type mismatches between the LLM's output and expected inputs are caught at the Dagger API layer ^[extracted]

### 5. Cross-Language Module Interop

Modules written in any supported language (Go, Python, TypeScript, Java, PHP) can be installed and consumed in modules written in other languages. A Python agent module can use a TypeScript workspace module, or a Go GitHub integration module. This enables teams to share tooling across language boundaries. ^[extracted]

## Agent Loop Structure

The Dagger agent loop follows a pattern: ^[extracted]

1. **Prompt injection** — the assignment string is templated into a markdown prompt that instructs the LLM on how to work: analyze first, don't make unnecessary changes, always run tests, don't stop until tests pass
2. **Tool discovery** — the LLM lists available methods on the environment object to understand its capabilities
3. **Code-edit loop** — read files, plan changes, write files, run tests, iterate
4. **Post-validation** — after the agent returns, deterministic code independently runs tests as a final check
5. **Output extraction** — typed output (completed directory) is returned from the agent function

## GitHub Issue-to-PR Automation

Dagger extends the agent pattern into a fully automated issue-to-PR pipeline: ^[extracted]

1. A `develop` module installs the [[entities/github-copilot|GitHub]] issue module (from the Daggerverse)
2. A `develop-issue` function reads a GitHub issue body as the agent's assignment
3. The agent runs its normal code-edit loop against the source
4. The function creates a PR with `closes #issue` in the body
5. A three-line [[entities/github-copilot|GitHub Actions]] workflow triggers on issue label `develop`: installs Dagger, runs `dagger call develop-issue`

## Multi-Agent Composition

Since every Dagger agent is itself a function, agents can be composed: ^[extracted]

- An agent can have another agent as a tool in its environment
- Agents can give feedback to each other (e.g., `slash review` agent reviews PRs)
- Agents can write Dagger code using Dagger (nested container execution with `privilege-nesting`)
- This aligns with the agent-workflow composition patterns from [[entities/sam-bhagwat|Sam Bhagwat]]'s taxonomy: agent as a step, agent as a tool, agent supervisor model ^[inferred]

## Relationship to Other Patterns

- [[concepts/agent-loop]] — The Dagger LLM function implements a standard agent loop, with the Dagger-specific additions of container sandboxing and typed environments
- [[concepts/issue-to-pr-pipeline]] — Dagger's label-triggered agent workflow is a specific implementation of this pattern, distinct from [[entities/github-copilot|Copilot]]'s native issue assignment
- [[concepts/agent-design-patterns]] — Dagger's environment scoping implements the power-vs-control tradeoff at the tool level
- [[concepts/stateful-environments]] — Shared architectural principle of containerizing domain logic away from the agent
- [[concepts/micro-agents]] — Dagger modules naturally produce micro-agent-scale tools; the workshop workspace had 4 functions (read, write, list, test)
- [[concepts/mcp-gateway-pattern]] — Dagger modules can be exposed as MCP servers, connecting to the MCP ecosystem
- [[concepts/context-engineering]] — The prompt markdown file is a deliberate context engineering artifact controlling agent behavior

## Practical Adoption Pattern

The workshop recommended a progression path: ^[extracted]

1. **Start with CI/CD** — build Dagger modules for build, test, and deploy (establishing the infrastructure)
2. **Add workspace tools** — create a workspace sub-module with read/write/list/test functions for the agent
3. **Create the agent** — write a `develop` function that connects an LLM to the workspace
4. **Automate with GitHub** — add GitHub issue reading and PR creation, trigger from a label
5. **Add feedback loops** — multi-agent composition for PR review, test failure repair, and iteration

## Related

- [[entities/dagger]] — The Dagger platform
- [[entities/kyle-penfound]] — Co-presenter of the workshop
- [[entities/jeremy-adams]] — Co-presenter of the workshop
- [[references/aief2025-ship-agents-that-ship]] — Full talk reference

## Sources

- AIEF2025 — Ship Agents that Ship: A Hands-On Workshop, Kyle Penfound, Jeremy Adams, Dagger. https://www.youtube.com/watch?v=Fzb1a24hF-o
