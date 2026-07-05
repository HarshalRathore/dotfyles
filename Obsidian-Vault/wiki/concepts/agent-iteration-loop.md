---
title: "Agent Iteration Loop"
category: concepts
tags:
  - agent
  - iteration
  - prompt-engineering
  - github-copilot
  - agent-mode
sources:
  - "[[sources/watchv=rkvilz06y08]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Agent Iteration Loop

The Agent Iteration Loop is the expected pattern where developers refine AI agent outputs through successive prompts rather than expecting a single prompt to produce the desired result. [[entities/jon-peck|Jon Peck]] explicitly states: "I guarantee your first prompt will not be right." ^[extract]

## How It Works

The iteration loop operates at three levels:

1. **README refinement** — The developer iterates on the README spec, adding or clarifying requirements based on the agent's output. ^[extracted]
2. **Prompt refinement** — The developer refines their prompt to the agent, being more specific about what to do or what MCPs to use. ^[extracted]
3. **Context accumulation** — The agent accumulates context from each iteration (extracted data, generated files, terminal responses) and uses it to improve subsequent outputs. ^[extracted]

## Supporting Mechanisms

Several Copilot features support the iteration loop:

- **README files** — Serve as the living specification that evolves through iterations. ^[extracted]
- **[[concepts/copilot-instructions|Copilot Instructions]]** — Provide consistent ground rules across iterations. ^[extracted]
- **Prompt files** — Selectable prompt templates stored in the repository for common workflows. ^[extracted]
- **`.instructions` files** — Per-file-type instruction patterns for consistent code generation. ^[2]

## Why Iteration Is Expected

The iteration loop exists because:

- Agent behavior depends on model capabilities, context window limits, and prompt clarity.
- External data sources (via [[concepts/model-context-protocol|MCP]]) introduce variability — the agent must discover schema, select tables, and extract data before producing output.
- The developer's understanding of the problem deepens as the agent produces initial output.

## Related

- [[entities/github-copilot]] — GitHub Copilot Agent Mode
- [[concepts/readme-driven-development]] — README as evolving spec
- [[concepts/mcp-handshake]] — MCP handshake sequence
- [[concepts/agent-vs-workflow]] — Agent autonomy spectrum
