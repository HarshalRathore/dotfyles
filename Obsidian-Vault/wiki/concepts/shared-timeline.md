---
title: "Shared Timeline"
category: concepts
tags:
  - ai
  - human-ai-collaboration
  - agentic
  - windsurf
  - workflow
  - timeline
summary: "A mental model where the human developer and AI agent share a single timeline of actions and context, enabling the AI to anticipate needs and act seamlessly across the full software engineering workflow."
sources:
  - "[[sources/watchv=jvunpl5qo8q]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Shared Timeline

The **shared timeline** is a mental model for human-AI collaboration in software engineering, articulated by [[entities/kevin-hou|Kevin Hou]] of [[entities/windsurf|Windsurf]] at AIEF2025. It posits that the human developer and AI agent operate on a single timeline of actions and context, rather than in separate parallel tracks. ^[extracted]

## Core Idea

Hou describes the shared timeline as Windsurf's "secret sauce" — the reason users feel like the editor is "reading their minds." ^[extracted] Unlike earlier AI coding tools that responded only to explicit prompts (the "tokens in, tokens out" paradigm), the shared timeline model means the AI is continuously aware of the developer's context, history, and intent, enabling it to act proactively. ^[extracted]

## Timeline Scope

The shared timeline extends far beyond the IDE. It encompasses:

- **Coding context**: file reads, terminal commands, editor history, open tabs
- **External context**: GitHub commit history, PRs, web searches, documentation
- **Meta-learning**: organizational best practices, engineering preferences encoded in code quality

This means the AI must ingest context from Google Docs (design docs), Figma (designs), Slack (requirements), Jira (tickets), and any [[concepts/model-context-protocol|MCP]]-connected service. ^[extracted]

## Implications

The shared timeline model implies that the AI doesn't just generate code — it participates in the full software engineering workflow: writing design docs, opening PRs, running tests, deploying, and reviewing code. ^[extracted] The timeline can be picked up mid-workflow, handling messy states mid-commit, and working with tools outside the editor. ^[extracted]

This is fundamentally different from the "tokens in, tokens out" model that dominates current AI evaluation benchmarks like SweeBench. ^[inferred]

## Evolution from Autocomplete

Hou frames the evolution:

1. **Pre-autocomplete era**: AI had to do everything, developers typed every character
2. **Autocomplete era** (Copilot, Codium): AI wrote a small percentage of code, abstracted small edits
3. **Agentic era** (Windsurf): AI edits multiple files, performs background research, executes terminal commands
4. **Shared timeline era**: AI and human share one timeline, AI acts across the full workflow

This progression shows the shared timeline as the natural extension of agentic coding — where the AI doesn't just assist but participates on the same timeline as the developer. ^[inferred]

## Related

- [[concepts/developer-outer-loop|Developer Outer Loop]] — The shared timeline extends into the outer loop
- [[concepts/agent-loop|Agent Loop]] — The shared timeline as the operational model for agent loops
- [[concepts/ambient-agents|Ambient Agents]] — The always-on extension of the shared timeline
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The broader shift the shared timeline enables
