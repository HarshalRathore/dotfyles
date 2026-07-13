---
title: Agents Should Use a File System
category: concepts
tags:
  - agent-design
  - state-management
  - agent-tools
  - claude-code
  - anthropic
relationships:
  - target: '[[concepts/stateful-environments]]'
    type: extends
  - target: '[[concepts/agent-tools]]'
    type: related_to
  - target: '[[entities/claude-code]]'
    type: demonstrated
  - target: '[[concepts/agent-infrastructure]]'
    type: related_to
sources:
  - https://x.com/trq212/status/2035372725921882119
summary: Thariq Al-Samarrai's thesis that AI agents should use the file system as an elegant state representation, enabling multi-pass workflows and work verification — demonstrated by Claude Code.
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Agents Should Use a File System

A thesis by [[entities/thariq-al-samarrai|Thariq Al-Samarrai]] (@trq212, Anthropic) arguing that every AI agent should have filesystem access as a core capability. The file system is an elegant way of representing state that an agent can read into context and use to verify its own work. ^[extracted]

## Core Thesis

The file system enables **multi-pass workflows** — rather than forcing the agent to solve everything in a single context window pass, it can write intermediate results to files, search across them with grep, and iterate over the problem. This mirrors how human programmers work: you don't need to remember everything, you just need to know how to find it. ^[extracted]

Claude Code proved this thesis in practice. Before Claude Code, the prevailing assumption was that context windows would grow large enough to fit entire codebases directly into context. That turned out not to be how programming works — the file system abstraction is the better pattern. ^[extracted]

## Key Use Cases

The file system serves as a general-purpose tool for multiple agent workloads: ^[inferred]

- **State persistence** — Agents write conversation history, search results, and intermediate outputs to files, making them accessible across sessions and enabling stateful workflows.
- **Agentic search** — Instead of dumping thousands of emails into context, an agent can write them to files and use grep to find relevant passages. This is more efficient than loading everything into context at once. ^[extracted]
- **React artifacts** — Agents make mistakes writing code; having a persistent file system lets them display, iterate on, and verify their work. ^[inferred]
- **Excel/data processing** — Working with spreadsheets and structured data files, reading and writing data through file operations.
- **Memory** — Previous conversation context stored as markdown or JSON files, searchable and linkable to exact architecture decisions.

## Design Principles

Thariq's approach to agent file system usage includes several design principles: ^[inferred]

1. **Progressive disclosure** — Don't dump everything into context at once. Let the agent read files selectively.
2. **Write for searchability** — Format files so agents can grep across them effectively (structured headings, consistent formatting).
3. **Verify through files** — The agent should be able to read back what it wrote to confirm correctness, rather than relying solely on LLM self-assessment.

## Philosophy: Agents Are Like Humans

A key insight from the thread: agents are trained like humans, so we should give them the same resources and tools that humans use. The file system is one of the most fundamental tools a programmer has, and restricting agents from using it is arbitrary. ^[extracted]

This connects to the broader principle that **bash is all you need** — Thariq's advice to companies building general agents is to give them terminal access. The file system is the persistent layer that bash operates on. ^[inferred]

## Permissions and Safety

The file system is a big responsibility. As agents become more general, the problem shifts from access to **permissions**. Anthropic's approach:

- **Sandboxed execution** — Claude Code runs in a sandbox by default.
- **Fine-grained permission controls** — The [[entities/claude-code|Claude Agent SDK]] provides tools for setting granular permissions: allow rules, deny rules, permission modes (default, dontAsk, acceptEdits, bypassPermissions, plan, auto).
- **Permission evaluation order** — hooks → deny rules → ask rules → permission mode → allow rules → canUseTool callback.

 These permission mechanisms are documented in the [[entities/claude-code|Claude Code SDK]] documentation and are critical for production agent deployments. ^[extracted]

## Community Discussion

The thread sparked discussion on several follow-up questions: ^[inferred]

- **Persistence across sessions** — Whether the filesystem should persist depends on the use case; for personal agents that work with a specific user, persistent state makes sense.
- **Cross-platform access** — Suggest using APIs into the platform while storing results in the filesystem, especially for search operations.
- **Virtualized file systems** — Environments like [[entities/stackblitz|Stackblitz WebContainers]] can virtualize the filesystem for agents that run without direct filesystem access.

## Relationship to Other Concepts

This thesis is a specific instance of the broader idea that [[concepts/stateful-environments|stateful environments]] are essential for capable agents. It complements [[concepts/agent-infrastructure|agent infrastructure primitives]] (memory, code execution, long runtimes) by showing how the file system serves multiple primitives at once. ^[inferred]

The approach also connects to [[concepts/agent-tools|agent tools]] — the file system is arguably the most fundamental tool, alongside the terminal and the code editor. ^[inferred]

## Open Questions

- How should permissions evolve as agents become more autonomous and general-purpose?
- What is the right default permission set for personal agents vs. enterprise agents?
- Does virtualizing the filesystem (WebContainers) lose capabilities compared to direct host access?

## Sources

- Thariq Al-Samarrai's pinned tweet thread — https://x.com/trq212/status/2035372725921882119
- Claude Agent SDK Demos — https://github.com/anthropics/claude-agent-sdk-demos
- Claude Code SDK Permissions Docs — https://code.claude.com/docs/en/agent-sdk/permissions
