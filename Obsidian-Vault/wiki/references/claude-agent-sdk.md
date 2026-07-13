---
title: Building Agents with the Claude Agent SDK
category: references
tags: [agent-sdk, claude-code, anthropic, agents, tool-use, mcp]
aliases: [Claude Agent SDK, claude agent sdk, claude-code-sdk]
relationships:
  - target: '[[concepts/agent-loop]]'
    type: implements
  - target: '[[entities/claude-code]]'
    type: extends
  - target: '[[concepts/agents-should-use-a-filesystem]]'
    type: related_to
  - target: '[[concepts/agentic-retrieval]]'
    type: related_to
  - target: '[[entities/thariq-al-samarrai]]'
    type: authored_by
sources:
  - https://claude.com/blog/building-agents-with-the-claude-agent-sdk
summary: Anthropic's guide to building agents with the Claude Agent SDK — giving agents a computer to work like humans do, via the gather-act-verify loop.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Building Agents with the Claude Agent SDK

Article by [[entities/thariq-al-samarrai|Thariq Shihipar]] with notes and editing from Molly Vorwerck, Suzanne Wang, Alex Isken, Cat Wu, Keir Bradwell, Alexander Bricken & Ashwin Bhat. Published September 29, 2025 on claude.com/blog.

## Overview

The Claude Agent SDK (renamed from the Claude Code SDK) is a collection of tools that helps developers build powerful agents on top of [[entities/claude-code|Claude Code]]. Anthropic's vision: the same agent harness that powers Claude Code can power many types of agents beyond coding — creating general-purpose agents by giving them access to a computer.

## Key Design Principle: Give Claude a Computer

The core insight is that Claude needs the same tools programmers use daily: find files, write/edit files, lint, run, debug. By giving Claude access to the user's computer via the terminal, it can work like humans do. This principle makes Claude Code effective at non-coding tasks — reading CSVs, searching the web, building visualizations, interpreting metrics. ^[extracted]

## Agent Types Unlocked

With the SDK, developers can build:

- **Finance agents** — understand portfolios, evaluate investments via external APIs, store data, run calculations
- **Personal assistant agents** — book travel, manage calendars, schedule appointments, build briefs, track context across applications
- **Customer support agents** — handle high-ambiguity requests like support tickets, collect/review user data, connect to APIs, message users, escalate to humans
- **Deep research agents** — conduct research across large document collections, search file systems, synthesize info from multiple sources, cross-reference data, generate detailed reports ^[extracted]

## The Agent Loop: Gather → Act → Verify

Claude Code operates in a feedback loop[^1] that maps to the general agent loop pattern: ^[extracted]

### Gather Context

- **Agentic search and the file system** — The file system represents information that could be pulled into the model's context. When encountering large files (logs, user uploads), Claude decides which way to load them via bash scripts like grep and tail. This directly demonstrates the thesis that [[concepts/agents-should-use-a-filesystem|agents should use the file system as their state representation]]. ^[extracted]
- **Semantic search** — Faster than agentic search but less accurate, more difficult to maintain, and less transparent. Start with agentic search first, add semantic search only if faster results are needed. ^[extracted]
- **Subagents** — The SDK supports subagents by default, enabling parallelization and context isolation. Subagents use their own isolated context windows and only send relevant information back to the orchestrator. ^[extracted]
- **Compaction** — Automatically summarizes previous messages when context limit approaches. ^[extracted]

### Take Action

- **Tools** — Primary building blocks of execution. Prominent in Claude's context window, making them the primary actions the agent considers. ^[extracted]
- **Bash & scripts** — General-purpose tool for flexible work. Agents can write code to download files, convert formats, search across data. ^[extracted]
- **Code generation** — The SDK excels at code generation. Code is precise, composable, and infinitely reusable. Examples include creating Excel/PPT/Word docs via Python. ^[extracted]
- **MCPs** — The Model Context Protocol provides standardized integrations to external services (Slack, GitHub, Google Drive, Asana) without custom integration code, handling authentication and API calls automatically. ^[extracted]

### Verify Your Work

- **Defining rules** — The best form of feedback is providing clearly defined rules for an output, then explaining which rules failed and why. Code linting is an excellent form of rules-based feedback. ^[extracted]
- **Visual feedback** — Screenshots/renders for UI generation or HTML email verification. ^[extracted]
- **LLM as a judge** — Use another language model to judge output based on fuzzy rules. ^[extracted]

## Testing and Improvement

After running the agent loop a few times:

- Look carefully at output, especially failures
- Build representative test sets for evals
- Question whether the agent has the right tools for the job
- If the agent misunderstands the task → it might be missing key information
- If the agent fails repeatedly → add a formal rule
- If the agent can't fix errors → give it more useful tools
- If performance varies with new features → build a representative test set ^[extracted]

## Key Quotes

> "The key design principle behind the Claude Agent SDK is to give your agents a computer, allowing them to work like humans do."

> "Code is precise, composable, and infinitely reusable, making it an ideal output for agents that need to perform complex operations reliably."

> "The best form of feedback is providing clearly defined rules for an output, then explaining which rules failed and why."

> "The file system represents information that could be pulled into the model's context."

## Open Questions

- How does the Claude Agent SDK compare to other agent frameworks (LangChain, LlamaIndex, OpenAI Agents SDK)?
- What are the limitations of the "give Claude a computer" approach for domains where terminal access is not appropriate?
- How do MCP integrations interact with the SDK's permission model?

---

[^1]: The gather-context → take-action → verify-work loop from this article is a concrete instantiation of the general [[concepts/agent-loop]] pattern, specialized for Claude Code's tool-set and capabilities.
