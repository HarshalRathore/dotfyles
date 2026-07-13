---
title: Claude Code Dynamic Workflows
category: concepts
tags: [claude-code, dynamic-workflows, subagents, javascript, orchestration]
aliases: [claude code workflows, dynamic workflows]
relationships:
  - target: "[[concepts/agent-workflows]]"
    type: extends
  - target: "[[entities/claude-code]]"
    type: feature_of
  - target: "[[concepts/agents-should-use-a-filesystem]]"
    type: related_to
sources:
  - "https://code.claude.com/docs/en/workflows.md"
  - "https://x.com/trq212/status/2061907337154367865"
  - "https://x.com/trq212/status/2062556889171517499"
summary: JavaScript-based scripts that orchestrate subagents at scale in Claude Code, moving orchestration out of context into reusable background scripts.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13
updated: 2026-07-13
---

# Claude Code Dynamic Workflows

**Dynamic workflows** are JavaScript scripts that orchestrate subagents at scale within [[entities/claude-code|Claude Code]]. They move orchestration from Claude's context window into a runtime that executes in the background while the user's session stays responsive.

## How It Works

A dynamic workflow is a JS script that Claude Code writes for a specific task. The script defines the loop, branching, and intermediate results — holding them outside Claude's context window, which only needs to see the final answer. ^[extracted]

This is distinct from normal subagent usage: with subagents, Claude decides turn by turn what to spawn next and results land in context. With workflows, the script holds the orchestration logic. ^[extracted]

## When to Use

Dynamic workflows are appropriate when a task needs more agents than one conversation can coordinate, or when orchestration should be codified as a reusable script. Examples include:

- Codebase-wide bug sweeps
- Large-scale file migrations (e.g. 500-file migrations)
- Cross-checked research
- Multi-angle planning

## Built-in and Ultracode Modes

- `/deep-research` — bundled workflow that fans out web searches, cross-checks sources, and returns a cited report. ^[extracted]
- `/effort ultracode` — combines xhigh reasoning with automatic workflow orchestration, where Claude decides when a task warrants a workflow. ^[extracted]

## Saving and Reusing

Run `/workflows`, select a run, and press `s` to save it as a reusable command in `.claude/workflows/`. ^[extracted]

## Limits

- Up to **16 concurrent agents**
- Up to **1,000 agents per run**
- No mid-run user input
- No direct filesystem or shell access from the workflow script itself ^[extracted]

## Relation to Agent-Driven Development

Dynamic workflows exemplify the shift toward agents orchestrating agents — a natural extension of the [[concepts/agents-should-use-a-filesystem|agent-as-file-system]] thesis, where state representation (the workflow script) lives outside the reasoning context. ^[inferred]

They also complement the [[concepts/agent-workflows|agent workflows]] concept by providing a concrete, scriptable implementation of the orchestration layer. ^[extracted]

## Open Questions

- How do workflows integrate with the agent lifecycle and evaluation pipeline?
- What patterns emerge for workflow composition and chaining?
- Can workflows call other workflows, creating recursive orchestration?

## Related

- [[concepts/agent-workflows]] — general workflow orchestration concept
- [[concepts/agent-vs-workflow]] — agent vs workflow debate
- [[concepts/agentic-workflow-vs-workflow-agent]] — agentic workflow vs workflow agent distinction
