---
title: "Claude Code"
tags:
  - tool
  - ai-coding-agent
  - anthropic
  - claude
  - terminal
  - developer-tools
  - aief2025
sources:
  - "[[sources/watchv=lue8k2jqfkk]]"
summary: "Anthropic's agentic coding tool that provides low-level terminal access to Claude models. Designed to be unopinionated, working across any terminal, IDE, and GitHub repositories."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Claude Code

Claude Code is Anthropic's agentic coding product, created by [[entities/boris-cherny|Boris Cherny]]. It provides direct, low-level access to Claude models for software development tasks, running primarily through the terminal.

## Design Philosophy

Claude Code follows a **terminal-first, unopinionated** design:

- **Start with the terminal** — intentionally simple, general-purpose interface with low-level model access
- **Unopinionated** — no flashy UI, no scaffolding, no opinions about what the product should look like
- **Model company approach** — Anthropic makes models and wants users to experience them; the product gets out of the way

The rationale: Anthropic doesn't know what the right UX is yet, because the model is improving exponentially. By staying minimal, Claude Code can adapt as the model's capabilities evolve. ^[extracted]

## Deployment Modes

| Mode | Description |
|------|-------------|
| **Terminal** | Run `claude` in any terminal (iTerm2, WSL, SSH, tmux, VS Code terminal, Cursor terminal). Works anywhere there's a terminal. |
| **IDE** | Takes over the IDE more — shows diffs as big beautiful IDE diffs, ingests diagnostics from the IDE. Less polished than Cursor/Windsurf but provides raw model access. |
| **GitHub** | Run Claude in any GitHub repository via the `/install github` command. Runs on user's compute, data stays local. Uses existing tooling stack. |

## Model Support

- Supports Claude Pro plan
- Supports Claude Max
- Available at `claude.ai/code` for installation
- Installable via npm

## Relationship to Competitors

Claude Code intentionally does not compete with products like Cursor or Windsurf on polish. Instead, it provides a raw, low-level experience that lets users experience the model's capabilities directly. Boris Cherny notes he uses Cursor and Windsurf every day — Claude Code fills a different niche. ^[extracted]

## Related

- [[entities/boris-cherny]] — Creator
- [[entities/anthropic]] — Parent company
- [[entities/cursor-ai]] — Competing AI coding IDE
- [[entities/windsurf]] — Competing AI coding IDE
- [[concepts/agentic-coding]] — The paradigm Claude Code operates in
- [[concepts/terminal-first-design]] — Claude Code's design approach
- [[concepts/unopinionated-product-design]] — Product philosophy behind Claude Code
- [[concepts/evolution-of-programming]] — Historical context for Claude Code's existence
- [[concepts/agent-loop]] — Claude Code's `/loop` command enables agent loops
