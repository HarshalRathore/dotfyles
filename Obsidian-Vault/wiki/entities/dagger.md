---
title: "Dagger"
tags:
  - entity
  - company
  - tool
  - cicd
  - container
  - workflow-engine
  - agents
aliases: [dagger.io, Dagger engine, Dagger workflow engine]
summary: "Container workflow engine and CI/CD platform by the founders of Docker. Now supports LLMs as a first-class primitive for building agent environments with sandboxed execution."
sources:
  - "AIEF2025 - Ship Agents that Ship: A Hands-On Workshop - Kyle Penfound, Jeremy Adams, Dagger - https://www.youtube.com/watch?v=Fzb1a24hF-o"
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Dagger

Dagger is a container workflow engine and CI/CD platform founded by the same team behind [[entities/docker|Docker]]. It allows users to write portable workflows as code that run identically on local machines, CI runners ([[entities/github-copilot|GitHub Actions]], [[entities/github-copilot|GitLab CI]], Jenkins, etc.), and any cloud. Recently, Dagger has added LLMs as a first-class primitive alongside containers, directories, and files, enabling agent environments with sandboxed execution. ^[extracted]

## Core Architecture

Dagger workflows are expressed as functions written in ordinary languages ([[concepts/microservices-architecture|Go]], Python, TypeScript, Java, PHP) that compose containers, directories, files, and now LLMs. These functions are called **Dagger modules** and can be shared and reused via the **Daggerverse** — an open index of thousands of modules. ^[extracted]

Key architectural properties:

- **Container-native** — every workflow step runs in an isolated container; no tools need to be installed on the host machine beyond Dagger itself and a container runtime (Docker, Podman, Nerdctl). ^[extracted]
- **Cross-language interop** — modules written in one language can be installed and used in modules written in another language. The Dagger API is language-agnostic under the hood. ^[extracted]
- **Single unified cache** — all container operations share one cache, regardless of the language SDK used. ^[extracted]
- **Immutable objects** — all Dagger objects (containers, directories, files) are immutable; operations produce new objects rather than mutating existing ones. ^[extracted]
- **Same everywhere** — a workflow runs identically on a developer's laptop and in any CI system. ^[extracted]

## Dagger as Agent Platform

Dagger's LLM primitive enables building agents as functions: a function takes an environment (typed inputs including scoped tool modules) and a prompt, and connects them to an LLM to produce typed outputs. The key design principles: ^[extracted]

- **Environment as robot body** — the agent's tools, inputs, outputs, and state are all captured in a typed environment object. Tool descriptions are automatically generated from Dagger module function signatures — no manual JSON tool description authoring. ^[extracted]
- **LLM as brain** — any model provider ([[entities/openai|OpenAI]], [[entities/anthropic|Anthropic]], [[entities/google-deepmind|Gemini]], [[entities/modal|local models via Ollama]], [[entities/aws|Bedrock]]) can be plugged in as the agent's reasoning engine. ^[extracted]
- **Container sandboxing** — agent execution happens entirely inside containers, not on the host filesystem. This enables safe parallel agent runs, rollback, and isolation. ^[extracted]
- **Tests as guardrails** — existing CI/CD test functions become agent validation tools. The agent writes code, runs actual project tests, and iterates until tests pass or the agent determines the approach is wrong. ^[extracted]
- **Validation outside the loop** — after the agent completes, deterministic code can independently run tests again as a final quality gate. ^[extracted]

## Agent Environment Pattern

A core Dagger agent pattern emerged from the workshop: ^[extracted]

1. Build a **workspace module** with file system tools (read file, write file, list files) and test functions
2. Install the workspace module as a dependency of the main agent module
3. Define a typed environment with workspace input (source code), assignment input (task), and workspace output (completed work)
4. Write a prompt that instructs the LLM to analyze first, avoid unnecessary changes, and always run tests
5. Connect everything via `dagger.LLM(environment=env, prompt=prompt)` — the agent is a single function call
6. Post-validate by running tests deterministically on the agent's output ^[extracted]

## GitHub Issue-to-PR Integration

Dagger modules abstract GitHub API operations (list issues, read issue, comment, create PR, write PR comments). A complete agent pipeline: ^[extracted]

- A GitHub issue gets a `develop` label
- [[entities/github-copilot|GitHub Actions]] triggers, runs a Dagger function
- Dagger reads the issue body as the assignment
- Dagger's develop agent (the LLM) reads the source code, writes changes, runs tests
- Dagger creates a pull request with `closes #issue` in the body ^[extracted]

## DaggerCloud

Optional visualization layer that streams [[concepts/openai-real-time-api|OpenTelemetry]] traces from local or CI agent runs to a web dashboard. Enables observing every tool call, prompt, and LLM response within the agent loop. ^[extracted]

## MCP Compatibility

Dagger modules can be exposed as MCP servers via `dagger --mod <name> mcp`, and external MCP servers can be imported into Dagger as modules. This enables the Dagger module ecosystem to interoperate with the broader MCP ecosystem. ^[extracted]

## Related

- [[concepts/dagger-agent-platform]] — Dagger's approach to building software engineering agents
- [[concepts/issue-to-pr-pipeline]] — Autonomous issue resolution pipeline pattern
- [[concepts/agent-loop]] — The agent loop pattern underlying Dagger's LLM function
- [[concepts/agent-design-patterns]] — Design patterns taxonomy; Dagger's environment-scoping is a tool composition pattern
- [[concepts/stateful-environments]] — Complementary architecture: containerized agent environments
- [[concepts/micro-agents]] — Sizing pattern relevant to Dagger's modular tool composition
- [[concepts/containerization]] — Foundation technology for Dagger's sandboxing
- [[concepts/mcp-gateway-pattern]] — Related integration pattern for module exposure
- [[concepts/mcp-dynamic-client-registration]] — Dynamic MCP client registration for Dagger's MCP interop
- [[entities/docker]] — Same founders, predecessor technology
- [[entities/kubernetes]] — Common deployment target for Dagger workflows

## Sources

- AIEF2025 — Ship Agents that Ship: A Hands-On Workshop, Kyle Penfound, Jeremy Adams, Dagger. https://www.youtube.com/watch?v=Fzb1a24hF-o
